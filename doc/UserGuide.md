---
titlepage: true
<!-- titlepage-logo: DOC_PATH/logo.png -->
toc-own-page: true
code-block-font-size: \scriptsize
logo: DOC_PATH/logo.png
---

# xx User Guide

\newpage
\large
**Revisions**

\normalsize
| Revision | Date       | Author     | Approver  | Changes                     |
|----------|------------|------------|-----------|-----------------------------|
| 0.1      | 2023/07/25 |            |           | Initial draft               |

\newpage
## Introduction

```plantuml
@startuml
rectangle "machine" {
rectangle "user app1" {
    rectangle "SOA consumer" as C1 {
    }
}
rectangle "user app2" {
    rectangle "SOA consumer" as C2 {
    }
}
rectangle PmService as pms {
    rectangle "SOA provider" as S {
    }
}
}

C1 --> S : subscribe
C2 --> S : subscribe
S --> C1 : broadcast
S --> C2 : broadcast
C1 --> S : report
C2 --> S : report
@enduml
```

\newpage
## Prerequisite

- A compatible operating system (e.g. Linux, QNX, Android).
- A compatible C++ compiler that supports at least C++14.
- CMake for building the project.

\newpage
## Install the SDK
...

Then you'll build the project with cmake:
```sh
cmake -B build && cmake --build build && cmake --install build
```

\newpage
## Run


\newpage
## Reference

