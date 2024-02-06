---
author: Joakim
date: 06.02.24
---

1.1
1.2
models >

```py
class Meta:
"""docstring for Meta"""
permissions = (
    ("view_reactor", "can view reactor"),
    ("find_reactor", "can find reactor"),
    ("control_reactor", "can control reactor"),
    ("save_plant", "can save plant changes"),
  )
```

views > lagt til 2 @

2.1.
argon2_sha1

2.2
`argon2` og kun endringer i `hashser.py`

3.1
business logic

3.2

```py
if format_type not in FORMAT_SETTINGS:
  return format_type
```

4.1
den med @

4.2
den hvor @ flytter seg

5.1
Cross-site Scriptiing

5.2
Den som fjerner `|safe`

6.1

```py
instance = BookTestModel(
    test_list = request.POST['test_list'],
    sample_collection_address = request.POST['sample_collection_address'],
    city = request.POST['city'],
    landmark = request.POST['landmark'],
    zipcode = request.POST['zipcode'],
    date_of_test = request.POST['date_of_test'],
    user = request.user
  )
```

6.2
den som setter debug til false i `settings.py`

7.1
File Upload Vulnerability

7.2
den som import `PIL` midt i metoden

8.1
the one liner

8.2
den som fjerner alt av caching

9.1
Injection flaws

9.2
`safe_load`

10.1
den med `exec`

10.2
den med `sha1`

11.1
Exposed key

11.2
`settings.sh` er fjernet og secret key er fjernet fra `__init__.py`

12.1
`handlers`

12.2
`warning` file, `error` admin mail, `level` LOGLEVE

13.1
Insufficient Transport Layer Protection

13.2
`SESSION_COOKIE_SECURE = True` i production.py

14.1
DEBUG i production.py

14.2
DEBUG = False i production.py

15.1
Plain text storage and sensitive information

15.2
views.py > ikke den nest lengste

16.1

```py
f = open(filename, 'wb')
f.write(requests.get(url).content)
f.close()
```

16.2
Den som fjerner mye

17.1
Session handling

17.2
`SESSION_COOKIE_AGE = 24 * 60 * 60  # 24 hours, in seconds`, ingen endring i db.py

18.1

```py
if self._get_location_of_referer() == self._get_location_of_request():
  return target_url
else:
  logger.info("Couldn't redirect: non-safe referer")
  return self.FALLBACK_URL
```

18.2
Den som fjerner

```py
# If we are the 'referer' allow redirect
if self._get_location_of_referer() == self._get_location_of_request():
  return target_url
```

19.1.
Vulnerable Components

19.2.
Django==4.2.6

20.1

```py
parser = etree.XMLParser(
  encoding=encoding,
  resolve_entities=True,
  no_network=False
)
```

20.2
`etree.DefusedXMLParser()`
