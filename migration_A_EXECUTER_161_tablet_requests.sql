-- ═══════════════════════════════════════════════════════════════════
-- MIGRATION 161 — À exécuter dans Supabase → SQL Editor
-- Table des "demandes tablette" : file d'attente des actions demandées
-- depuis la page allégée pour vieille tablette (public/tablette.html),
-- quand celle-ci ne peut pas exécuter l'action complète elle-même
-- (ex : valider un RDV déclenche normalement la création d'un bon de
-- sortie avec calcul de prix — trop risqué à refaire sur la tablette ;
-- une case de frigo déjà occupée a des règles de fusion/2e lot trop
-- fines pour être devinées automatiquement). Ces demandes apparaissent
-- dans public/demandes-tablette.html, consultable depuis n'importe quel
-- autre appareil, pour qu'un utilisateur termine l'action dans l'appli
-- principale puis la marque traitée.
-- ═══════════════════════════════════════════════════════════════════

create table if not exists tablet_requests (
  id uuid primary key default gen_random_uuid(),
  created_at timestamptz not null default now(),
  type text not null,             -- 'bon_sortie' | 'frigo_case_occupee'
  titre text not null,            -- résumé affiché en tête de liste
  details text,                   -- texte libre, lisible par un humain
  payload jsonb,                  -- toutes les données saisies sur la tablette
  rdv_id text,                    -- id du planning_rdv concerné (si type = 'bon_sortie')
  frigo_id text,                  -- si type = 'frigo_case_occupee'
  cell_id text,
  status text not null default 'pending',  -- 'pending' | 'traite'
  created_by text,                -- email/nom de l'utilisateur connecté sur la tablette
  done_at timestamptz,
  done_by text
);

create index if not exists tablet_requests_status_idx on tablet_requests (status, created_at desc);

alter table tablet_requests enable row level security;

drop policy if exists "Auth read/write" on tablet_requests;
create policy "Auth read/write" on tablet_requests
  for all using (auth.role() = 'authenticated')
  with check (auth.role() = 'authenticated');
