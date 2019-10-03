# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.AndroidManagement.V1.Model.Policy do
  @moduledoc """
  A policy resource represents a group of settings that govern the behavior of a managed device and the apps installed on it.

  ## Attributes

  *   `maximumTimeToLock` (*type:* `String.t`, *default:* `nil`) - Maximum time in milliseconds for user activity until the device locks. A value of 0 means there is no restriction.
  *   `networkResetDisabled` (*type:* `boolean()`, *default:* `nil`) - Whether resetting network settings is disabled.
  *   `passwordRequirements` (*type:* `GoogleApi.AndroidManagement.V1.Model.PasswordRequirements.t`, *default:* `nil`) - Password requirements. DEPRECATED - Use password_policies
  *   `shareLocationDisabled` (*type:* `boolean()`, *default:* `nil`) - Whether location sharing is disabled.
  *   `modifyAccountsDisabled` (*type:* `boolean()`, *default:* `nil`) - Whether adding or removing accounts is disabled.
  *   `permittedAccessibilityServices` (*type:* `GoogleApi.AndroidManagement.V1.Model.PackageNameList.t`, *default:* `nil`) - Specifies permitted accessibility services. If the field is not set, any accessibility service can be used. If the field is set, only the accessibility services in this list and the system's built-in accessibility service can be used. In particular, if the field is set to empty, only the system's built-in accessibility servicess can be used.
  *   `mobileNetworksConfigDisabled` (*type:* `boolean()`, *default:* `nil`) - Whether configuring mobile networks is disabled.
  *   `privateKeySelectionEnabled` (*type:* `boolean()`, *default:* `nil`) - Allows showing UI on a device for a user to choose a private key alias if there are no matching rules in ChoosePrivateKeyRules. For devices below Android P, setting this may leave enterprise keys vulnerable.
  *   `blockApplicationsEnabled` (*type:* `boolean()`, *default:* `nil`) - Whether applications other than the ones configured in applications are blocked from being installed. When set, applications that were installed under a previous policy but no longer appear in the policy are automatically uninstalled.
  *   `safeBootDisabled` (*type:* `boolean()`, *default:* `nil`) - Whether rebooting the device into safe boot is disabled.
  *   `recommendedGlobalProxy` (*type:* `GoogleApi.AndroidManagement.V1.Model.ProxyInfo.t`, *default:* `nil`) - The network-independent global HTTP proxy. Typically proxies should be configured per-network in open_network_configuration. However for unusual configurations like general internal filtering a global HTTP proxy may be useful. If the proxy is not accessible, network access may break. The global proxy is only a recommendation and some apps may ignore it.
  *   `networkEscapeHatchEnabled` (*type:* `boolean()`, *default:* `nil`) - Whether the network escape hatch is enabled. If a network connection can't be made at boot time, the escape hatch prompts the user to temporarily connect to a network in order to refresh the device policy. After applying policy, the temporary network will be forgotten and the device will continue booting. This prevents being unable to connect to a network if there is no suitable network in the last policy and the device boots into an app in lock task mode, or the user is otherwise unable to reach device settings.
  *   `frpAdminEmails` (*type:* `list(String.t)`, *default:* `nil`) - Email addresses of device administrators for factory reset protection. When the device is factory reset, it will require one of these admins to log in with the Google account email and password to unlock the device. If no admins are specified, the device won't provide factory reset protection.
  *   `unmuteMicrophoneDisabled` (*type:* `boolean()`, *default:* `nil`) - Whether the microphone is muted and adjusting microphone volume is disabled.
  *   `cellBroadcastsConfigDisabled` (*type:* `boolean()`, *default:* `nil`) - Whether configuring cell broadcast is disabled.
  *   `passwordPolicies` (*type:* `list(GoogleApi.AndroidManagement.V1.Model.PasswordRequirements.t)`, *default:* `nil`) - Password requirement policies. Different policies can be set for work profile or fully managed devices by setting the password_scope field in the policy.
  *   `kioskCustomLauncherEnabled` (*type:* `boolean()`, *default:* `nil`) - Whether the kiosk custom launcher is enabled. This replaces the home screen with a launcher that locks down the device to the apps installed via the applications setting. Apps appear on a single page in alphabetical order. The status bar is disabled when this is set.
  *   `statusBarDisabled` (*type:* `boolean()`, *default:* `nil`) - Whether the status bar is disabled. This disables notifications, quick settings, and other screen overlays that allow escape from full-screen mode. DEPRECATED. To disable the status bar on a kiosk device, use InstallType KIOSK or kioskCustomLauncherEnabled.
  *   `applications` (*type:* `list(GoogleApi.AndroidManagement.V1.Model.ApplicationPolicy.t)`, *default:* `nil`) - Policy applied to apps.
  *   `permissionGrants` (*type:* `list(GoogleApi.AndroidManagement.V1.Model.PermissionGrant.t)`, *default:* `nil`) - Explicit permission or group grants or denials for all apps. These values override the default_permission_policy.
  *   `appAutoUpdatePolicy` (*type:* `String.t`, *default:* `nil`) - The app auto update policy, which controls when automatic app updates can be applied.
  *   `systemUpdate` (*type:* `GoogleApi.AndroidManagement.V1.Model.SystemUpdate.t`, *default:* `nil`) - The system update policy, which controls how OS updates are applied. If the update type is WINDOWED, the update window will automatically apply to Play app updates as well.
  *   `openNetworkConfiguration` (*type:* `map()`, *default:* `nil`) - Network configuration for the device. See configure networks for more information.
  *   `uninstallAppsDisabled` (*type:* `boolean()`, *default:* `nil`) - Whether user uninstallation of applications is disabled.
  *   `installAppsDisabled` (*type:* `boolean()`, *default:* `nil`) - Whether user installation of apps is disabled.
  *   `bluetoothConfigDisabled` (*type:* `boolean()`, *default:* `nil`) - Whether configuring bluetooth is disabled.
  *   `vpnConfigDisabled` (*type:* `boolean()`, *default:* `nil`) - Whether configuring VPN is disabled.
  *   `policyEnforcementRules` (*type:* `list(GoogleApi.AndroidManagement.V1.Model.PolicyEnforcementRule.t)`, *default:* `nil`) - Rules that define the behavior when a particular policy can not be applied on device
  *   `bluetoothDisabled` (*type:* `boolean()`, *default:* `nil`) - Whether bluetooth is disabled. Prefer this setting over bluetooth_config_disabled because bluetooth_config_disabled can be bypassed by the user.
  *   `ensureVerifyAppsEnabled` (*type:* `boolean()`, *default:* `nil`) - Whether app verification is force-enabled.
  *   `usbMassStorageEnabled` (*type:* `boolean()`, *default:* `nil`) - Whether USB storage is enabled. Deprecated.
  *   `setUserIconDisabled` (*type:* `boolean()`, *default:* `nil`) - Whether changing the user icon is disabled.
  *   `factoryResetDisabled` (*type:* `boolean()`, *default:* `nil`) - Whether factory resetting from settings is disabled.
  *   `bluetoothContactSharingDisabled` (*type:* `boolean()`, *default:* `nil`) - Whether bluetooth contact sharing is disabled.
  *   `usbFileTransferDisabled` (*type:* `boolean()`, *default:* `nil`) - Whether transferring files over USB is disabled.
  *   `adjustVolumeDisabled` (*type:* `boolean()`, *default:* `nil`) - Whether adjusting the master volume is disabled.
  *   `keyguardDisabled` (*type:* `boolean()`, *default:* `nil`) - Whether the keyguard is disabled.
  *   `setWallpaperDisabled` (*type:* `boolean()`, *default:* `nil`) - Whether changing the wallpaper is disabled.
  *   `deviceOwnerLockScreenInfo` (*type:* `GoogleApi.AndroidManagement.V1.Model.UserFacingMessage.t`, *default:* `nil`) - The device owner information to be shown on the lock screen.
  *   `funDisabled` (*type:* `boolean()`, *default:* `nil`) - Whether the user is allowed to have fun. Controls whether the Easter egg game in Settings is disabled.
  *   `debuggingFeaturesAllowed` (*type:* `boolean()`, *default:* `nil`) - Whether the user is allowed to enable debugging features.
  *   `version` (*type:* `String.t`, *default:* `nil`) - The version of the policy. This is a read-only field. The version is incremented each time the policy is updated.
  *   `encryptionPolicy` (*type:* `String.t`, *default:* `nil`) - Whether encryption is enabled
  *   `dataRoamingDisabled` (*type:* `boolean()`, *default:* `nil`) - Whether roaming data services are disabled.
  *   `accountTypesWithManagementDisabled` (*type:* `list(String.t)`, *default:* `nil`) - Account types that can't be managed by the user.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The name of the policy in the form enterprises/{enterpriseId}/policies/{policyId}.
  *   `createWindowsDisabled` (*type:* `boolean()`, *default:* `nil`) - Whether creating windows besides app windows is disabled.
  *   `smsDisabled` (*type:* `boolean()`, *default:* `nil`) - Whether sending and receiving SMS messages is disabled.
  *   `installUnknownSourcesAllowed` (*type:* `boolean()`, *default:* `nil`) - Whether the user is allowed to enable the "Unknown Sources" setting, which allows installation of apps from unknown sources.
  *   `minimumApiLevel` (*type:* `integer()`, *default:* `nil`) - The minimum allowed Android API level.
  *   `wifiConfigsLockdownEnabled` (*type:* `boolean()`, *default:* `nil`) - DEPRECATED - Use wifi_config_disabled.
  *   `androidDevicePolicyTracks` (*type:* `list(String.t)`, *default:* `nil`) - The app tracks for Android Device Policy the device can access. The device receives the latest version among all accessible tracks. If no tracks are specified, then the device only uses the production track.
  *   `longSupportMessage` (*type:* `GoogleApi.AndroidManagement.V1.Model.UserFacingMessage.t`, *default:* `nil`) - A message displayed to the user in the device administators settings screen.
  *   `alwaysOnVpnPackage` (*type:* `GoogleApi.AndroidManagement.V1.Model.AlwaysOnVpnPackage.t`, *default:* `nil`) - Configuration for an always-on VPN connection. Use with vpn_config_disabled to prevent modification of this setting.
  *   `screenCaptureDisabled` (*type:* `boolean()`, *default:* `nil`) - Whether screen capture is disabled.
  *   `complianceRules` (*type:* `list(GoogleApi.AndroidManagement.V1.Model.ComplianceRule.t)`, *default:* `nil`) - Rules declaring which mitigating actions to take when a device is not compliant with its policy. When the conditions for multiple rules are satisfied, all of the mitigating actions for the rules are taken. There is a maximum limit of 100 rules. Use policy enforcement rules instead.
  *   `choosePrivateKeyRules` (*type:* `list(GoogleApi.AndroidManagement.V1.Model.ChoosePrivateKeyRule.t)`, *default:* `nil`) - Rules for automatically choosing a private key and certificate to authenticate the device to a server. The rules are ordered by increasing precedence, so if an outgoing request matches more than one rule, the last rule defines which private key to use.
  *   `locationMode` (*type:* `String.t`, *default:* `nil`) - The degree of location detection enabled. The user may change the value unless the user is otherwise blocked from accessing device settings.
  *   `mountPhysicalMediaDisabled` (*type:* `boolean()`, *default:* `nil`) - Whether the user mounting physical external media is disabled.
  *   `persistentPreferredActivities` (*type:* `list(GoogleApi.AndroidManagement.V1.Model.PersistentPreferredActivity.t)`, *default:* `nil`) - Default intent handler activities.
  *   `outgoingCallsDisabled` (*type:* `boolean()`, *default:* `nil`) - Whether outgoing calls are disabled.
  *   `permittedInputMethods` (*type:* `GoogleApi.AndroidManagement.V1.Model.PackageNameList.t`, *default:* `nil`) - If present, only the input methods provided by packages in this list are permitted. If this field is present, but the list is empty, then only system input methods are permitted.
  *   `outgoingBeamDisabled` (*type:* `boolean()`, *default:* `nil`) - Whether using NFC to beam data from apps is disabled.
  *   `tetheringConfigDisabled` (*type:* `boolean()`, *default:* `nil`) - Whether configuring tethering and portable hotspots is disabled.
  *   `statusReportingSettings` (*type:* `GoogleApi.AndroidManagement.V1.Model.StatusReportingSettings.t`, *default:* `nil`) - Status reporting settings
  *   `setupActions` (*type:* `list(GoogleApi.AndroidManagement.V1.Model.SetupAction.t)`, *default:* `nil`) - Actions to take during the setup process.
  *   `addUserDisabled` (*type:* `boolean()`, *default:* `nil`) - Whether adding new users and profiles is disabled.
  *   `defaultPermissionPolicy` (*type:* `String.t`, *default:* `nil`) - The default permission policy for runtime permission requests.
  *   `credentialsConfigDisabled` (*type:* `boolean()`, *default:* `nil`) - Whether configuring user credentials is disabled.
  *   `shortSupportMessage` (*type:* `GoogleApi.AndroidManagement.V1.Model.UserFacingMessage.t`, *default:* `nil`) - A message displayed to the user in the settings screen wherever functionality has been disabled by the admin.
  *   `removeUserDisabled` (*type:* `boolean()`, *default:* `nil`) - Whether removing other users is disabled.
  *   `playStoreMode` (*type:* `String.t`, *default:* `nil`) - This mode controls which apps are available to the user in the Play Store and the behavior on the device when apps are removed from the policy.
  *   `autoTimeRequired` (*type:* `boolean()`, *default:* `nil`) - Whether auto time is required, which prevents the user from manually setting the date and time.
  *   `stayOnPluggedModes` (*type:* `list(String.t)`, *default:* `nil`) - The battery plugged in modes for which the device stays on. When using this setting, it is recommended to clear maximum_time_to_lock so that the device doesn't lock itself while it stays on.
  *   `skipFirstUseHintsEnabled` (*type:* `boolean()`, *default:* `nil`) - Flag to skip hints on the first use. Enterprise admin can enable the system recommendation for apps to skip their user tutorial and other introductory hints on first start-up.
  *   `wifiConfigDisabled` (*type:* `boolean()`, *default:* `nil`) - Whether configuring Wi-Fi access points is disabled.
  *   `cameraDisabled` (*type:* `boolean()`, *default:* `nil`) - Whether all cameras on the device are disabled.
  *   `keyguardDisabledFeatures` (*type:* `list(String.t)`, *default:* `nil`) - Disabled keyguard customizations, such as widgets.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :maximumTimeToLock => String.t(),
          :networkResetDisabled => boolean(),
          :passwordRequirements => GoogleApi.AndroidManagement.V1.Model.PasswordRequirements.t(),
          :shareLocationDisabled => boolean(),
          :modifyAccountsDisabled => boolean(),
          :permittedAccessibilityServices =>
            GoogleApi.AndroidManagement.V1.Model.PackageNameList.t(),
          :mobileNetworksConfigDisabled => boolean(),
          :privateKeySelectionEnabled => boolean(),
          :blockApplicationsEnabled => boolean(),
          :safeBootDisabled => boolean(),
          :recommendedGlobalProxy => GoogleApi.AndroidManagement.V1.Model.ProxyInfo.t(),
          :networkEscapeHatchEnabled => boolean(),
          :frpAdminEmails => list(String.t()),
          :unmuteMicrophoneDisabled => boolean(),
          :cellBroadcastsConfigDisabled => boolean(),
          :passwordPolicies =>
            list(GoogleApi.AndroidManagement.V1.Model.PasswordRequirements.t()),
          :kioskCustomLauncherEnabled => boolean(),
          :statusBarDisabled => boolean(),
          :applications => list(GoogleApi.AndroidManagement.V1.Model.ApplicationPolicy.t()),
          :permissionGrants => list(GoogleApi.AndroidManagement.V1.Model.PermissionGrant.t()),
          :appAutoUpdatePolicy => String.t(),
          :systemUpdate => GoogleApi.AndroidManagement.V1.Model.SystemUpdate.t(),
          :openNetworkConfiguration => map(),
          :uninstallAppsDisabled => boolean(),
          :installAppsDisabled => boolean(),
          :bluetoothConfigDisabled => boolean(),
          :vpnConfigDisabled => boolean(),
          :policyEnforcementRules =>
            list(GoogleApi.AndroidManagement.V1.Model.PolicyEnforcementRule.t()),
          :bluetoothDisabled => boolean(),
          :ensureVerifyAppsEnabled => boolean(),
          :usbMassStorageEnabled => boolean(),
          :setUserIconDisabled => boolean(),
          :factoryResetDisabled => boolean(),
          :bluetoothContactSharingDisabled => boolean(),
          :usbFileTransferDisabled => boolean(),
          :adjustVolumeDisabled => boolean(),
          :keyguardDisabled => boolean(),
          :setWallpaperDisabled => boolean(),
          :deviceOwnerLockScreenInfo =>
            GoogleApi.AndroidManagement.V1.Model.UserFacingMessage.t(),
          :funDisabled => boolean(),
          :debuggingFeaturesAllowed => boolean(),
          :version => String.t(),
          :encryptionPolicy => String.t(),
          :dataRoamingDisabled => boolean(),
          :accountTypesWithManagementDisabled => list(String.t()),
          :name => String.t(),
          :createWindowsDisabled => boolean(),
          :smsDisabled => boolean(),
          :installUnknownSourcesAllowed => boolean(),
          :minimumApiLevel => integer(),
          :wifiConfigsLockdownEnabled => boolean(),
          :androidDevicePolicyTracks => list(String.t()),
          :longSupportMessage => GoogleApi.AndroidManagement.V1.Model.UserFacingMessage.t(),
          :alwaysOnVpnPackage => GoogleApi.AndroidManagement.V1.Model.AlwaysOnVpnPackage.t(),
          :screenCaptureDisabled => boolean(),
          :complianceRules => list(GoogleApi.AndroidManagement.V1.Model.ComplianceRule.t()),
          :choosePrivateKeyRules =>
            list(GoogleApi.AndroidManagement.V1.Model.ChoosePrivateKeyRule.t()),
          :locationMode => String.t(),
          :mountPhysicalMediaDisabled => boolean(),
          :persistentPreferredActivities =>
            list(GoogleApi.AndroidManagement.V1.Model.PersistentPreferredActivity.t()),
          :outgoingCallsDisabled => boolean(),
          :permittedInputMethods => GoogleApi.AndroidManagement.V1.Model.PackageNameList.t(),
          :outgoingBeamDisabled => boolean(),
          :tetheringConfigDisabled => boolean(),
          :statusReportingSettings =>
            GoogleApi.AndroidManagement.V1.Model.StatusReportingSettings.t(),
          :setupActions => list(GoogleApi.AndroidManagement.V1.Model.SetupAction.t()),
          :addUserDisabled => boolean(),
          :defaultPermissionPolicy => String.t(),
          :credentialsConfigDisabled => boolean(),
          :shortSupportMessage => GoogleApi.AndroidManagement.V1.Model.UserFacingMessage.t(),
          :removeUserDisabled => boolean(),
          :playStoreMode => String.t(),
          :autoTimeRequired => boolean(),
          :stayOnPluggedModes => list(String.t()),
          :skipFirstUseHintsEnabled => boolean(),
          :wifiConfigDisabled => boolean(),
          :cameraDisabled => boolean(),
          :keyguardDisabledFeatures => list(String.t())
        }

  field(:maximumTimeToLock)
  field(:networkResetDisabled)
  field(:passwordRequirements, as: GoogleApi.AndroidManagement.V1.Model.PasswordRequirements)
  field(:shareLocationDisabled)
  field(:modifyAccountsDisabled)
  field(:permittedAccessibilityServices, as: GoogleApi.AndroidManagement.V1.Model.PackageNameList)
  field(:mobileNetworksConfigDisabled)
  field(:privateKeySelectionEnabled)
  field(:blockApplicationsEnabled)
  field(:safeBootDisabled)
  field(:recommendedGlobalProxy, as: GoogleApi.AndroidManagement.V1.Model.ProxyInfo)
  field(:networkEscapeHatchEnabled)
  field(:frpAdminEmails, type: :list)
  field(:unmuteMicrophoneDisabled)
  field(:cellBroadcastsConfigDisabled)

  field(
    :passwordPolicies,
    as: GoogleApi.AndroidManagement.V1.Model.PasswordRequirements,
    type: :list
  )

  field(:kioskCustomLauncherEnabled)
  field(:statusBarDisabled)
  field(:applications, as: GoogleApi.AndroidManagement.V1.Model.ApplicationPolicy, type: :list)
  field(:permissionGrants, as: GoogleApi.AndroidManagement.V1.Model.PermissionGrant, type: :list)
  field(:appAutoUpdatePolicy)
  field(:systemUpdate, as: GoogleApi.AndroidManagement.V1.Model.SystemUpdate)
  field(:openNetworkConfiguration, type: :map)
  field(:uninstallAppsDisabled)
  field(:installAppsDisabled)
  field(:bluetoothConfigDisabled)
  field(:vpnConfigDisabled)

  field(
    :policyEnforcementRules,
    as: GoogleApi.AndroidManagement.V1.Model.PolicyEnforcementRule,
    type: :list
  )

  field(:bluetoothDisabled)
  field(:ensureVerifyAppsEnabled)
  field(:usbMassStorageEnabled)
  field(:setUserIconDisabled)
  field(:factoryResetDisabled)
  field(:bluetoothContactSharingDisabled)
  field(:usbFileTransferDisabled)
  field(:adjustVolumeDisabled)
  field(:keyguardDisabled)
  field(:setWallpaperDisabled)
  field(:deviceOwnerLockScreenInfo, as: GoogleApi.AndroidManagement.V1.Model.UserFacingMessage)
  field(:funDisabled)
  field(:debuggingFeaturesAllowed)
  field(:version)
  field(:encryptionPolicy)
  field(:dataRoamingDisabled)
  field(:accountTypesWithManagementDisabled, type: :list)
  field(:name)
  field(:createWindowsDisabled)
  field(:smsDisabled)
  field(:installUnknownSourcesAllowed)
  field(:minimumApiLevel)
  field(:wifiConfigsLockdownEnabled)
  field(:androidDevicePolicyTracks, type: :list)
  field(:longSupportMessage, as: GoogleApi.AndroidManagement.V1.Model.UserFacingMessage)
  field(:alwaysOnVpnPackage, as: GoogleApi.AndroidManagement.V1.Model.AlwaysOnVpnPackage)
  field(:screenCaptureDisabled)
  field(:complianceRules, as: GoogleApi.AndroidManagement.V1.Model.ComplianceRule, type: :list)

  field(
    :choosePrivateKeyRules,
    as: GoogleApi.AndroidManagement.V1.Model.ChoosePrivateKeyRule,
    type: :list
  )

  field(:locationMode)
  field(:mountPhysicalMediaDisabled)

  field(
    :persistentPreferredActivities,
    as: GoogleApi.AndroidManagement.V1.Model.PersistentPreferredActivity,
    type: :list
  )

  field(:outgoingCallsDisabled)
  field(:permittedInputMethods, as: GoogleApi.AndroidManagement.V1.Model.PackageNameList)
  field(:outgoingBeamDisabled)
  field(:tetheringConfigDisabled)

  field(
    :statusReportingSettings,
    as: GoogleApi.AndroidManagement.V1.Model.StatusReportingSettings
  )

  field(:setupActions, as: GoogleApi.AndroidManagement.V1.Model.SetupAction, type: :list)
  field(:addUserDisabled)
  field(:defaultPermissionPolicy)
  field(:credentialsConfigDisabled)
  field(:shortSupportMessage, as: GoogleApi.AndroidManagement.V1.Model.UserFacingMessage)
  field(:removeUserDisabled)
  field(:playStoreMode)
  field(:autoTimeRequired)
  field(:stayOnPluggedModes, type: :list)
  field(:skipFirstUseHintsEnabled)
  field(:wifiConfigDisabled)
  field(:cameraDisabled)
  field(:keyguardDisabledFeatures, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidManagement.V1.Model.Policy do
  def decode(value, options) do
    GoogleApi.AndroidManagement.V1.Model.Policy.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidManagement.V1.Model.Policy do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
