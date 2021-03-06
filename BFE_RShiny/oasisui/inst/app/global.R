###############################################################################
# note with shiny::runApp this statement isn't needed anymore
# library(shiny, warn.conflicts = FALSE, quietly = TRUE)

library(oasisui, warn.conflicts = FALSE)

#Extend max uploadable file size from default 5MB to 40MB
options(shiny.maxRequestSize = 400*1024^2)

### logger ---------------------------------------------------------------------
loginfo("testing logger", logger = "oasisui.module")

### Django API -----------------------------------------------------------------

APISettings <- APIgetenv(server = "API_IP",
                         port = "API_PORT",
                         version = "API_VERSION",
                         share_filepath = "API_SHARE_FILEPATH")

options(oasisui.settings.api.server = APISettings$server)
options(oasisui.settings.api.port = APISettings$port)
options(oasisui.settings.api.httptype = "application/json")
options(oasisui.settings.api.version = APISettings$version)
options(oasisui.settings.api.share_filepath = APISettings$share_filepath)

options(oasisui.settings.admin.mode = Sys.getenv("ADMIN_MODE"))

options(oasisui.settings.oasis_environment = Sys.getenv("OASIS_ENVIRONMENT"))
