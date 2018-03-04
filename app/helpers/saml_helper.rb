module SamlHelper
    def get_saml_settings
    settings = OneLogin::RubySaml::Settings.new

    url_base ||= "http://localhost:3000"

    # Example settings data, replace this values!

    # When disabled, saml validation errors will raise an exception.
    settings.soft = true
    settings.certificate = "-----BEGIN CERTIFICATE-----
MIICUDCCAbmgAwIBAgIBADANBgkqhkiG9w0BAQ0FADBFMQswCQYDVQQGEwJ1czEL
MAkGA1UECAwCVk4xEDAOBgNVBAoMB2ZyYW1naWExFzAVBgNVBAMMDmxvY2FsaG9z
dDozMDAwMB4XDTE4MDMwNDEwMjE0N1oXDTE5MDMwNDEwMjE0N1owRTELMAkGA1UE
BhMCdXMxCzAJBgNVBAgMAlZOMRAwDgYDVQQKDAdmcmFtZ2lhMRcwFQYDVQQDDA5s
b2NhbGhvc3Q6MzAwMDCBnzANBgkqhkiG9w0BAQEFAAOBjQAwgYkCgYEA5iBVNsaW
DiL/KKfkoKcnxW2hC7HCDRNDIgoxz7dMUiRQLELfQFvevB1TOKy2Nom3YLL3cxJx
tdPXk/SxyQB3qUrGqanYVsweCSFcnwU8FxphbprXPp8SoiUE5NNs2Ml9K8NFtla4
GXxvoI8X++jYpuBm+rhOsXHmb2WcDzTdbTUCAwEAAaNQME4wHQYDVR0OBBYEFAaf
lroqCGemcpVip9p/xtJrAwbdMB8GA1UdIwQYMBaAFAaflroqCGemcpVip9p/xtJr
AwbdMAwGA1UdEwQFMAMBAf8wDQYJKoZIhvcNAQENBQADgYEAgUBSBcBJ3l26yVwK
+oJdDqe+2WMWrp0zWXtG5zF2N1zL2eTYfJfCOWFpt8CD4RicqD4nGvk8f83e8v4r
WELbp3UFpHNBrPwHc1bMS5bo++/jG46JtYWOJ6IBbPrLKnEfYwxJA3/7eqeU+YRk
4FnHjaUR8kEc6EQ5QOH0mezA4qs=
-----END CERTIFICATE-----"
    settings.private_key = "-----BEGIN PRIVATE KEY-----
MIICdgIBADANBgkqhkiG9w0BAQEFAASCAmAwggJcAgEAAoGBAOYgVTbGlg4i/yin
5KCnJ8VtoQuxwg0TQyIKMc+3TFIkUCxC30Bb3rwdUzistjaJt2Cy93MScbXT15P0
sckAd6lKxqmp2FbMHgkhXJ8FPBcaYW6a1z6fEqIlBOTTbNjJfSvDRbZWuBl8b6CP
F/vo2KbgZvq4TrFx5m9lnA803W01AgMBAAECgYEAxbZtv/vqHAcxVcq5gNVcNCE2
RgfZAsbT3MEJfr6q0b/lKcHicTb9LH29bGnmuwCjDm90becgzulMxA9tV5YRNz6z
QvuhT0WThSPciuih1pkY1lqNdbRmgwtTqoO14WpVWB44H7FQaIGVk7nPwAMSnIoI
Skot1ebN+Jea0M/vRcECQQD089MtX+g9j8egImURaDSnQ+ZfXospWCNiQNEyX9Gv
1VGOSXRtajrNh6+w1lIeJBLKNiXwSVmX8WJ8Kn8iGqDpAkEA8IFT/sPfsKbG4t8Q
WIpMC11nsyEdS8Dhjw8WQoaNhgihAPr+cU0ZBmjCA4zKtJHczUTTWgCF/w7VEpob
ei1abQJAKHLS3l1F9lR1vGWxlsxEVZKKyhjMlgkt3p2hbdYQxB5Pl1Vd2mt+Rk4v
nt3lNYDzcVy7qxARsVt0zdgeoj0PcQJAfhQOKFweg8iqMnylYQT+4GZS2oDdjrzK
gehyzuUig8U6Qf1SLasxFz8LljjUetyMV79g3KmxlQf9gwbuqJnl8QJASEbrb21a
ClspQQk3otsQ/GCEWlX3HeMQT4ZDAwPYFNH9QfMBg1nYD/pfkDLl2sX1N9vF+6O0
RV/AXX93zJVWZA==
-----END PRIVATE KEY-----"
    #SP section
    settings.issuer                         = url_base + "/saml/metadata"
    settings.assertion_consumer_service_url = url_base + "/saml/acs"
    settings.assertion_consumer_logout_service_url = url_base + "/saml/logout"

    # IdP section
    settings.idp_entity_id                  = "http://www.okta.com/exkr6lmszrWGTxjhn2p6"
    settings.idp_sso_target_url             = "https://framgia.okta.com/app/framgia_samldemo_1/exkr6lmszrWGTxjhn2p6/sso/saml"
    settings.idp_slo_target_url             = "https://framgia.okta.com/app/framgia_samldemo_1/exkr6lmszrWGTxjhn2p6/slo/saml"
    settings.idp_cert                       = "-----BEGIN CERTIFICATE-----
MIIDnjCCAoagAwIBAgIGAWHXp6w/MA0GCSqGSIb3DQEBCwUAMIGPMQswCQYDVQQGEwJVUzETMBEG
A1UECAwKQ2FsaWZvcm5pYTEWMBQGA1UEBwwNU2FuIEZyYW5jaXNjbzENMAsGA1UECgwET2t0YTEU
MBIGA1UECwwLU1NPUHJvdmlkZXIxEDAOBgNVBAMMB2ZyYW1naWExHDAaBgkqhkiG9w0BCQEWDWlu
Zm9Ab2t0YS5jb20wHhcNMTgwMjI3MTQyNDQ1WhcNMjgwMjI3MTQyNTQ1WjCBjzELMAkGA1UEBhMC
VVMxEzARBgNVBAgMCkNhbGlmb3JuaWExFjAUBgNVBAcMDVNhbiBGcmFuY2lzY28xDTALBgNVBAoM
BE9rdGExFDASBgNVBAsMC1NTT1Byb3ZpZGVyMRAwDgYDVQQDDAdmcmFtZ2lhMRwwGgYJKoZIhvcN
AQkBFg1pbmZvQG9rdGEuY29tMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA2LP3CBLu
HgkzeuqkzwuJ9q2WcQhLFgh1GpWiDxWtj+3IkEz78iLftppzhTJPatEMABaj4nKeppk8bictsQx4
Gw1AbUIxMTHAzbHTRIqUUAoxHaIuCFYNWAJhH1jSgV+08XCn7laU/1j24nQ3ERko/eSV2ruXZnBJ
BH+v+4536eYYdBNNa0M69a4lyTFhjVSyYP9NaALkn2fA08RekvMe6wNbiZbsm7s1aeYecbqlzb48
LCJ+ACzdYUmRN6JtRJua1U3Z9UDSm0WR+nQw2J3IteniZI+9w4C6XcIwvjT9HI+w2nRQ3TiJL+KW
tH8Bpb+KUA1ZpNeqxUmKeNhm1AF/DwIDAQABMA0GCSqGSIb3DQEBCwUAA4IBAQBa3IdpW2McgbJz
sj7pHTk9yRZenLmIObMxVRJjQJFA+DGbZ9fHNu+/RzW4tZQ81i91JMZQVxVqAUoaE5IlbRQZhvH5
MtF606PLaDID2OtSUCUU/MSqSvckyhX/SS8qCuohD+2XDl7bwD1iT1ZXTPlUKtmS5RpzXUeX2+YI
55NRP0lekT6Kr+vWXTpKUFTe10jAq+gPqCFeL1t5VCq4tz+YUr/l+9UUZZfTJ676TDpUtJSI4kvz
skAWZeopoyjHz6mHyzhMtsjJDxPjdpHN3shOPpLl19l5EEEqY0mpQD0uFe6u5tLFF9HSSQC0Wsmt
VS5nlpoJynyQrQSgLCH+V8uo
-----END CERTIFICATE-----"
    settings.name_identifier_format         = "urn:oasis:names:tc:SAML:1.1:nameid-format:emailAddress"

    # Security section
    settings.security[:authn_requests_signed] = true
    settings.security[:logout_requests_signed] = true
    settings.security[:logout_responses_signed] = true
    settings.security[:metadata_signed] = true
    settings.security[:embed_sign] = false
    settings.security[:digest_method] = XMLSecurity::Document::SHA1
    settings.security[:signature_method] = XMLSecurity::Document::RSA_SHA1
    settings
  end
end
