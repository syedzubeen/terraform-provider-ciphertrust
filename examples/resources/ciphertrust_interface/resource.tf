resource "ciphertrust_interface" "certificate" {
    name = "web"
    certificate {
        certificate_chain = "-----BEGIN CERTIFICATE-----\nMIIEbTCCAtWgAwIBAgIIYmL8wAp4ZjgwDQYJKoZIhvcNAQELBQAwbDEgMB4GA1UE\nAxMXcnN5c2xvZy50aGFsZXNncm91cC5jb20xDDAKBgNVBAsTA0NQTDEPMA0GA1UE\nChMGVGhhbGVzMQ8wDQYDVQQHEwZBdXN0aW4xCzAJBgNVBAgTAlRYMQswCQYDVQQG\nEwJVUzAeFw0yMjA0MjIxOTA2NDFaFw0yNTAxMTYxOTA2NDVaMGsxHzAdBgNVBAMT\nFmNsaWVudC50aGFsZXNncm91cC5jb20xDDAKBgNVBAsTA0NQTDEPMA0GA1UEChMG\nVGhhbGVzMQ8wDQYDVQQHEwZBdXN0aW4xCzAJBgNVBAgTAlRYMQswCQYDVQQGEwJV\nUzCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAKfb1Oz+tul2Grxz/J2x\n1MBIOjiHJj+d74Bi0VfTZ/xHMCw5pf6xI3AXVw+hukh/qHM0qAZ1yyOm8PZ155oP\nTuN62c1ZwkV2c0XvHrjpbK9iIF4zP0y+X23B3eQt7XE3zIiaPmF5+CAMWgPXM1ZR\nHyE5qhT7wpGGtNsRVWYepz0XTbPwRdFZe8IeMXIrfiLlONJCLX9ueqR1Ec73QK/e\n4SVDJHvNwuzXo1BFRnVh+mLjQFmA+GVsYw61cbn2tT5T+1lrpPd7ZhZ7AI2XX6T9\nua3oZXwHNJ9m8Zh+H+qOj4IR/zKZjKszHn8wVBJlSZZ8ieXoVpzp+VHbMG1wVqJo\nBLECAwEAAaOBkzCBkDAMBgNVHRMBAf8EAjAAMB0GA1UdJQQWMBQGCCsGAQUFBwMC\nBggrBgEFBQcDATAhBgNVHREEGjAYghZjbGllbnQudGhhbGVzZ3JvdXAuY29tMB0G\nA1UdDgQWBBS/vJGs7udewv1Lz2/G8T4hbjQn5TAfBgNVHSMEGDAWgBTMv+bTbkR0\nnBUoO7o0fazL6X4hjzANBgkqhkiG9w0BAQsFAAOCAYEAnPvw1qon5fusz+HJpXf8\nD0f4XzEcQf3MWGl1KyoTv43w+4cFH+32pi67fTb0Yu3F8AwbzM0G7WilIuIbfaDU\nh+Sy/XuczdAH2mJ2bhffRqaUD9/53WuMcuqLWj1TIQaUuf39nO6e9AGHTPLvT6ce\nJ0IAi4MR3Y00a+gJ6MeN/GFhbr3eHPveDSMVrKkaPemxO4cpz05SeTDtRobioPSq\nyBUtAYwr4g76mtHZGVvYP2+xgMC6vIuxMOZGfWuS78YT2tJ6Ubdsch5m86ZhkvTD\nGVYHKAHrMnIStzEI0r4+BodKm+zMnRsW0pHQMES9brB457GNXU8tl36K+v11n98F\nxX8jn8g//xX7ughI8mhtrmuHhlR9LIDUqW6fjeSym0dU24c1/n3/gfgRNgVAXCY+\n1Hh7oIYU/fvTzH7GFFOzBdbTmefKLJQ44M0BBZL9w9TSVzgRPPNDuihw+6L5X0cZ\nj9UYX/4b1RLVk9yC+NfgBbiiD6NU49vF6kNnjrvgDE5L\n-----END CERTIFICATE-----\n-----BEGIN RSA PRIVATE KEY-----\nMIIEpAIBAAKCAQEAp9vU7P626XYavHP8nbHUwEg6OIcmP53vgGLRV9Nn/EcwLDml\n/rEjcBdXD6G6SH+oczSoBnXLI6bw9nXnmg9O43rZzVnCRXZzRe8euOlsr2IgXjM/\nTL5fbcHd5C3tcTfMiJo+YXn4IAxaA9czVlEfITmqFPvCkYa02xFVZh6nPRdNs/BF\n0Vl7wh4xcit+IuU40kItf256pHURzvdAr97hJUMke83C7NejUEVGdWH6YuNAWYD4\nZWxjDrVxufa1PlP7WWuk93tmFnsAjZdfpP25rehlfAc0n2bxmH4f6o6PghH/MpmM\nqzMefzBUEmVJlnyJ5ehWnOn5UdswbXBWomgEsQIDAQABAoIBAQCmMPqRYmbKooo6\nB0QXBVg0v84U5Yoy9jWIEU5e/Ao6Nmk1gCYfElaZxiIGcgMzgGDRH1M0gi+Lrt9n\nxLh3Say7gIhfzfyQNYRPuz3ZqhJXWnndijOj0eA9lPIR1n7911cD8GLOs6m8YT5G\nCyziyxJdHPCOMe0jlBE/y9uXbcX6rptAWwQWBmS/3XDMd/PTeDITU+UEFtuojdc7\nC5XkHEgg6mV/x8aVjNu36fu/DQ3rvHXgQG34PRmenB2GR+cl5ZtzyZA7EaROjbtD\nXPXq7l1TUENdQPoB9hcu40RwYp+wpSlaHgk2QvvRn7SDZUA4maSxBvLJjBWJCHsi\nnyvfIgN5AoGBAMpbWKDKLvRohMVrzMM5A5AcfcsSYmqTAjDXE+S6jBjdt0/cMMbZ\nR9fSXhnPM2YiMU+LNjkyT0AAE5qZQdUBJyF1fOGPS+WEDliZShLpUECqOSE2JOH0\n8x/fYF1FQ2Pf8by2uB6GlmdfMd55VfMFIHjusRcI7s8YuFN0P8cFmUHjAoGBANRb\nUk6IgnXW4VPvS2OCiTyn4yxBha0awwauwt6HJuCQAUhteGTOJhvhPbKtdD4pUDEA\nlB9IaCGdQj5EL4g98g0+7s19Jt1DlG0d0HqGDQdhe9cE9yZI09hlE+5co6Ir1Q2I\nJzP4nM1DmVa1h9z4xMOB36tlPZ3dpIoPkRIp+1NbAoGAc4G60GU4cjiq+Qn0oscL\nmpo4z87ZsJ3jlT9f0qMNTzBX79TvXsIuOSqSnkbgvv7riM0dEX7/L7gbeJbcthpn\nXLj0pMgn+YXsrnQpjSvyrEa+P4/pc7VfhiT6m6LqubreAOuHo50Ng0oabDR0dDjL\n9VvCaDSoJDynErP7p74xYiMCgYAxICMtScUsb5ZW7X+6OIN5Bbm3Dj1Xa158mEc6\nZXen8YhqcfCtGUeVoYi9YgUHMFV90I1zozN7uz6M2wdH9FSfndRusyofe7fFemU1\nQveWooWcm2h1cdmYMOHofYPZS1yRMdMn4bacgavidEJG60HRnKTaqKQVdiXPToSX\n+CBNCwKBgQC21qJby/9cEXhkUaPMEfTiRVMcDw9Ok0zGLFPFNkpNdTXyQg2rlztU\nP2TBsqOB74GZjfansVFPA/nHkh63ky16QzuBxnSe8qKOQCunN1va9vN02QpHD25m\nPOLFvwBWFMScOCHxIwNf+QGeeJp8gzntLw61SyuUqGbZ1yvMIM5Lgg==\n-----END RSA PRIVATE KEY-----\n-----BEGIN CERTIFICATE-----\nMIIEwTCCAymgAwIBAgIIYmLF5CG+O/4wDQYJKoZIhvcNAQELBQAwbDEgMB4GA1UE\nAxMXcnN5c2xvZy50aGFsZXNncm91cC5jb20xDDAKBgNVBAsTA0NQTDEPMA0GA1UE\nChMGVGhhbGVzMQ8wDQYDVQQHEwZBdXN0aW4xCzAJBgNVBAgTAlRYMQswCQYDVQQG\nEwJVUzAeFw0yMjA0MjIxNTEyMzdaFw0zMjA0MjAxNTEyNDVaMGwxIDAeBgNVBAMT\nF3JzeXNsb2cudGhhbGVzZ3JvdXAuY29tMQwwCgYDVQQLEwNDUEwxDzANBgNVBAoT\nBlRoYWxlczEPMA0GA1UEBxMGQXVzdGluMQswCQYDVQQIEwJUWDELMAkGA1UEBhMC\nVVMwggGiMA0GCSqGSIb3DQEBAQUAA4IBjwAwggGKAoIBgQDEGGVs3IpvFcGk7E75\nGD8GbWh3y8QrRWDSkGbjtYA/UDFESgd2cYK8tAimXYxYaCqYQ8Pk3n4YCzeYdtWr\nmMuDvlrOZzNChkMtnuBfDq2xxaLV1sw7ideSbhRs7b7wST0s2ZaaTZlBUm98kLa4\nfomhA21XfecKwIduN3mVYz8tv2wvGnz5LUA/VwQelMINJimnRFqjSlIdDnss4vZb\nMXJIUBcjGeCwHBKMx6iO+W8t4tVP2LHNEHal6+P1bYYP47SA4AaZKcCrajpDMJDh\nDAes0rFIhl4mr2s/F+OFOUWEPKWTzE9hgZJoOAyu+fjINR6nMim1rppnO56kLG3o\nLjWWR1CCwStHVL00RaQSShlGFwKEDym86sp4lb4Wq7YgAE2BM5F0QhqpSAsnp8sn\nKRYmgOuuak/YZXSSN6DBLdDAvlU7nnh9l4QVvmV+arzlRKarpSDGusThQfHxmAGe\nYLT2e6ImAkaT3qidweVFvVroAzlxVTcd0YWoqkhO389MsxECAwEAAaNnMGUwDwYD\nVR0TAQH/BAUwAwEB/zAiBgNVHREEGzAZghdyc3lzbG9nLnRoYWxlc2dyb3VwLmNv\nbTAPBgNVHQ8BAf8EBQMDBwYAMB0GA1UdDgQWBBTMv+bTbkR0nBUoO7o0fazL6X4h\njzANBgkqhkiG9w0BAQsFAAOCAYEAIjRlWUC9eTKkCR9k7mIwE6sjLkQqQo9CEEqX\nJhT5FChvxK/TlLb427a3B1glpo0DXXcOt/lA71zz69vg3FOlDNhP8ggIucl6qV+c\nG5eDIzV1XLPOIeyXmImg++/jojtofMJEciYyU0IGQ+3+2rKl3+4F8+yZQBRopP0b\nao9BD/IKH913NSKodkrivn5LSZqdOYi+yiFYUTPe1XA1OnI89E2xH4ZaX0g5Sxxw\nqWFu3LXrJUd9HQp6I7hvSHPtByPEWnj1WEVpdlXNuTRZl9Qewp+F2/4xiA0idftU\nySQlgX9teCgOwn4/TTxgy6v/kWhWJncMus0T71hUatgATQhqvkz/RH8ucNoKIDKl\nYezuXywR6To5/9SyhU4/z4etCMp+PJH8DQmiYQJB6xRvrNgS6dCbcYL4pWXuXCkv\nivzyv/K/G+7PHhgNLLxUZcKzpdxlaSTmtkxhgqwZ7nl/xX+ocrZLjohKHBFbFWLR\nSN09lRQcs7RbEpX/HDlIoOzok4KO\n-----END CERTIFICATE-----\n"
        generate = false
        format = "PEM"
        password = ""
    }
}