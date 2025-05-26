# project-conversion

# Project Conversation History

A Ruby on Rails application to track project conversation history including comments and status changes.  
This app supports managing projects and recording conversations linked to those projects, enabling teams to keep clear communication and history.

---

## Features

- Manage projects
- Add conversations to projects as comments or status changes
- Track conversation history with timestamps
- Pagination support for conversations

---

## Getting Started

### Prerequisites

- Ruby 3.x
- Rails 7.x
- PostgreSQL
- Bundler

### Installation

1. Clone the repo:

   ```bash
   git clone https://github.com/yourusername/project_conversation_history.git
   cd project_conversation_history
   bundle install
   rails db:create db:migrate db:seed
   rails server
   ```
