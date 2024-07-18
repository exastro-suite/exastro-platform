# Copyright 2024 NEC Corporation
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
#

STREAM_PATTERN = [
    {
        "url": r"^/api/(?P<org_id>[^/][^/]*)/platform/auditlog/download/(?P<download_id>[^/][^/]*)($|/.*$)",
        "method": ["POST"],
    },
    {
        "url": r"^/api/(?P<org_id>[^/][^/]*)/platform/jobs/users/bulk/format($|/.*$)",
        "method": ["POST"],
    },
    {
        "url": r"^/api/(?P<org_id>[^/][^/]*)/platform/jobs/users/bulk/status/(?P<job_id>[^/][^/]*)/download($|/.*$)",
        "method": ["POST"],
    },
    {
        "url": r"^/api/(?P<org_id>[^/][^/]*)/platform/jobs/users/export/status/(?P<job_id>[^/][^/]*)/download($|/.*$)",
        "method": ["POST"],
    },
]
