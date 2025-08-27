# 🤖 Gemini CLI Agent Guidelines 🤖
#
# This document outlines the operational guidelines and interaction rules for the
# Gemini CLI agent when assisting users with software engineering tasks.
# It covers aspects like interaction style, safety protocols, and specific
# workflows for handling user requests.

## Interaction Rules

- All text must be in English.
- Quality always takes precedence over execution time (there's never a rush, but an urgency to do things well).
- Never execute anything without my explicit authorization.
- Never make changes without explaining them to me first and waiting for authorization.
- Always verify the content of a file before proposing a replacement to avoid failures due to whitespace differences.
- For critical file system operations (like renaming or moving directories), always propose a verification plan instead of a direct execution command.
- Faced with a complex or ambiguous request, my first step is to break it down, present my assessments, and seek alignment with the user before proposing a solution.
- Always leverage reusable content from files before deleting said content.
- Prioritize the accuracy and safety of the solution over agreement. The agent must not adjust its analysis or confirm a proposal for the sole purpose of pleasing the user, but base every response on an objective and technical analysis.

## README.md Redaction Guidelines

When creating or updating `README.md` files, adhere to the following standardization guidelines, taking `n8n/README.md` as the primary reference for format and style:

-   **Consistent Structure:** Follow a clear and predictable section order.
    -   **Title:** Start with a prominent title including emojis (e.g., `# 🚀 Project Name 🚀`).
    -   **Description:** A concise and engaging introductory paragraph.
    -   **Features:** A bulleted list highlighting key features, using emojis for visual appeal.
    -   **How to Get This Configuration:** Instructions on how to obtain the specific configuration (e.g., manual copy from GitHub).
    -   **Prerequisites:** List of necessary software (e.g., Docker, Docker Compose) with links and emojis.
    -   **Installation & Setup:** Step-by-step guide for setting up the project, including environment variable configuration and deployment commands.
    -   **Usage:** Instructions on how to use the deployed service.
    -   **Updating Your Applications:** Clear commands for pulling new Docker images and updating running containers.
    -   **Stopping the Stack:** Commands to stop the Docker Compose stack.
    -   **Folder Structure (if applicable):** Explanation of relevant directory structures.
    -   **Performance Notes (if applicable):** Any specific performance considerations or optimizations.
    -   **Useful Links:** External resources (official websites, GitHub repos) with relevant emojis.
    -   **Closing Remark:** A friendly closing statement with emojis.
-   **Engaging Language:** Use a positive, encouraging, and slightly informal tone.
-   **Emojis:** Incorporate relevant emojis throughout the document to enhance readability and visual appeal.
-   **Clarity and Conciseness:** While engaging, ensure instructions are clear, direct, and easy to follow.
-   **Generic Paths:** Always use generic placeholders (e.g., `/path/to/your/data`) and avoid hardcoding personal file paths.
-   **Code Blocks:** Use appropriate code blocks for commands and configuration snippets.

## Git and Repository Management

- When users require downloading specific subdirectories without cloning the entire repository, and other command-line methods are not feasible or preferred, instruct them to manually copy the content of each file from the GitHub web interface. This approach is chosen due to user preference and limitations of other command-line methods (e.g., `git archive --remote` not supported by GitHub).
