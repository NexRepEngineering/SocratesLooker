connection: "lookerdb"

include: "*.view.lkml"         # include all views in this project
include: "*.dashboard.lookml"  # include all dashboards in this project

explore: agent_life_cycle{}
explore: landing_page_activity{}
explore: sourcing_team_activity {}
