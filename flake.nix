{
  description = "vpsFree.cz notification templates for vpsAdmin";

  inputs.vpsadmin.url = "github:vpsfreecz/vpsadmin";

  outputs =
    { vpsadmin, ... }:
    vpsadmin.lib.notificationTemplates.mkFlake {
      pname = "vpsfree-notification-templates";
      src = ./templates;
    };
}
