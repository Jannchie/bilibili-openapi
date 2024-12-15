# Bilibili OpenAPI

本项目从 [bilibili-API-collect](https://github.com/SocialSisterYi/bilibili-API-collect) 衍生而来，旨在生成一个符合 OpenAPI 3.0 规范的完整文档。通过读取 Markdown 文件，并结合 Gemini、Github Copilot 和 OpenAI 进行分析，手动整理出所需的文档。它将包含大部分接口，并详细说明每个接口的参数和返回值类型。通过自动化工具生成 SDK，期待能减少手动解析 JSON 的繁琐流程。

目前，由于资源限制，已完成约 90% 的文档生成，尚有部分接口待完善。文档尚未进行完（任）整（何）的功能测试，欢迎各位提交 PR 进行改进与完善。

## TODO

- [ ] 补全所有接口文档
- [ ] 添加详细的接口说明
- [ ] 进行全面的功能测试
- [ ] 将文档分割至多个文件
- [ ] 生成 SDK
