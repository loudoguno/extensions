# Raycast Extensions Workspace

A workspace for rapid AI-assisted development of Raycast extensions.

## 🚀 Quick Start

1. **Read the instructions**: Check [instructions.md](instructions.md) for CLI commands and workflows
2. **Explore templates**: Browse [templates/](templates/) for starter code
3. **Review docs**: Read [docs/](docs/) for comprehensive guides
4. **Add ideas**: Track your extension ideas in [💡 ideas.md](💡%20ideas.md)

## 📁 Repository Structure

```
extensions/
├── README.md                    # This file
├── instructions.md              # Complete development guide
├── 💡 ideas.md                  # Extension ideas tracker
│
├── agents/                      # AI agent documentation
│   ├── AGENTS.md
│   ├── INITIAL.md
│   ├── MOC.md
│   └── PROGRESS.md
│
├── docs/                        # Comprehensive documentation
│   ├── getting-started.md       # Setup and first extension
│   ├── ui-components.md         # UI component reference
│   ├── publishing.md            # Publishing to the store
│   └── team-extensions.md       # Team/org development
│
└── templates/                   # Ready-to-use templates
    ├── hello-world-detail/      # Detail view template
    ├── hello-world-list/        # List view template
    └── hello-world-form/        # Form view template
```

## 🛠️ Common Commands

```bash
# Create a new extension
# Use Raycast: Search "Create Extension"

# Start development
cd your-extension
npm install && npm run dev

# Build extension
npm run build

# Publish to store
npm run publish

# Lint code
npm run lint
npm run fix-lint
```

## 📚 Documentation

### Getting Started
- [instructions.md](instructions.md) - Complete CLI reference and workflows
- [docs/getting-started.md](docs/getting-started.md) - Setup guide

### Development
- [docs/ui-components.md](docs/ui-components.md) - UI components reference
- [templates/](templates/) - Starter templates

### Publishing
- [docs/publishing.md](docs/publishing.md) - Store publishing guide
- [docs/team-extensions.md](docs/team-extensions.md) - Team/org extensions

## 🎯 Workflow

1. **Ideate**: Add ideas to [💡 ideas.md](💡%20ideas.md)
2. **Plan**: Choose a template from [templates/](templates/)
3. **Develop**: Use `npm run dev` for hot reloading
4. **Test**: Test thoroughly in Raycast
5. **Publish**: Share with `npm run publish`

## 💡 Extension Ideas

Track and organize your extension ideas in [💡 ideas.md](💡%20ideas.md):
- Brainstorm new extensions
- Prioritize what to build
- Track progress
- Reference completed work

## 🎨 Templates

### Detail View Template
Simple markdown content display.
```bash
cp -r templates/hello-world-detail my-extension
cd my-extension
npm install && npm run dev
```

### List View Template
Browse and search items.
```bash
cp -r templates/hello-world-list my-extension
cd my-extension
npm install && npm run dev
```

### Form View Template
Collect user input with validation.
```bash
cp -r templates/hello-world-form my-extension
cd my-extension
npm install && npm run dev
```

## 🔗 Resources

### Official
- [Raycast Developers](https://developers.raycast.com/)
- [API Reference](https://developers.raycast.com/api-reference)
- [Extensions Repository](https://github.com/raycast/extensions)
- [Community](https://raycast.com/community)

### Learning
- [TypeScript Handbook](https://www.typescriptlang.org/docs/handbook/intro.html)
- [React Documentation](https://react.dev/)
- [Raycast Examples](https://developers.raycast.com/examples)

## 🤖 AI-Assisted Development

This workspace is optimized for rapid development with AI assistance:
- Pre-configured templates
- Comprehensive documentation
- Best practices and patterns
- Quick reference guides

Use your AI assistant to:
- Generate extension code
- Debug issues
- Refactor and optimize
- Add features quickly
- Write tests

## 📝 Notes

- **Version Control**: Initialize git for your extensions
- **Testing**: Always test before publishing
- **Documentation**: Keep READMEs updated
- **Team Extensions**: See [team-extensions.md](docs/team-extensions.md) for org development

## 🎉 Next Steps

1. Read [instructions.md](instructions.md)
2. Copy a template to start building
3. Check out [💡 ideas.md](💡%20ideas.md) for inspiration
4. Build something awesome!

---

Happy building with Raycast! 🚀
