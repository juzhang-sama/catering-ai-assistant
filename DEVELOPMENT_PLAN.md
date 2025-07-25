# 餐饮行业AI助手 - 开发计划

## 🎯 当前状态

### ✅ 已完成
- [x] 基础框架搭建 (Electron + React)
- [x] 依赖问题修复
- [x] 基础UI架构 (Ant Design)
- [x] 导航系统
- [x] 仪表盘页面 (基础版本)
- [x] 页面路由系统

### 🚧 进行中
- [ ] 完善各个功能模块
- [ ] 数据管理系统
- [ ] AI集成

## 📋 下一步开发计划

### 第一阶段：完善核心功能模块 (1-2周)

#### 1. 培训管理模块
**目标**: 实现完整的培训管理系统

**功能清单**:
- [ ] 培训课程管理 (CRUD)
- [ ] 员工培训进度跟踪
- [ ] 培训考试系统
- [ ] 培训报告生成
- [ ] AI智能出题功能

**技术实现**:
- 前端: React + Ant Design
- 数据存储: SQLite (本地) + 云同步
- AI集成: OpenAI API

#### 2. 标准操作流程 (SOP) 模块
**目标**: 实现SOP的创建、管理和执行

**功能清单**:
- [ ] SOP模板库
- [ ] SOP编辑器 (富文本 + 图片)
- [ ] SOP版本管理
- [ ] AI生成SOP功能
- [ ] SOP执行跟踪

**技术实现**:
- 富文本编辑器: Draft.js 或 Quill
- 图片上传: 本地存储
- AI生成: OpenAI GPT API

#### 3. 成本分析模块
**目标**: 实现成本数据的收集、分析和优化建议

**功能清单**:
- [ ] 成本数据录入
- [ ] 可视化图表 (ECharts)
- [ ] 成本趋势分析
- [ ] AI优化建议
- [ ] 行业对比分析

**技术实现**:
- 图表库: ECharts 或 Recharts
- 数据分析: 本地算法 + AI分析
- 数据导入: Excel/CSV支持

#### 4. 智能问答模块
**目标**: 实现基于AI的智能问答系统

**功能清单**:
- [ ] 基础问答功能
- [ ] 文档上传和解析
- [ ] 多语言支持
- [ ] 问答历史记录
- [ ] 知识库集成

**技术实现**:
- AI引擎: OpenAI API
- 文档解析: PDF.js + 文本提取
- 向量搜索: ChromaDB 或 SQLite + 向量扩展

#### 5. 知识库模块
**目标**: 构建企业知识管理系统

**功能清单**:
- [ ] 文档管理
- [ ] 分类标签系统
- [ ] 全文搜索
- [ ] 向量搜索 (RAG)
- [ ] 知识图谱

**技术实现**:
- 向量数据库: ChromaDB
- 全文搜索: SQLite FTS5
- 文档处理: 多格式支持

### 第二阶段：数据管理和AI集成 (2-3周)

#### 1. 数据库设计
**目标**: 设计并实现完整的数据模型

**数据库表设计**:
```sql
-- 用户表
CREATE TABLE users (
  id INTEGER PRIMARY KEY,
  username TEXT UNIQUE,
  role TEXT,
  created_at DATETIME
);

-- 培训课程表
CREATE TABLE training_courses (
  id INTEGER PRIMARY KEY,
  title TEXT,
  description TEXT,
  content TEXT,
  category TEXT,
  created_at DATETIME
);

-- 员工培训记录表
CREATE TABLE training_records (
  id INTEGER PRIMARY KEY,
  user_id INTEGER,
  course_id INTEGER,
  progress REAL,
  status TEXT,
  completed_at DATETIME
);

-- SOP表
CREATE TABLE sops (
  id INTEGER PRIMARY KEY,
  title TEXT,
  content TEXT,
  version TEXT,
  category TEXT,
  created_at DATETIME
);

-- 成本记录表
CREATE TABLE cost_records (
  id INTEGER PRIMARY KEY,
  category TEXT,
  amount REAL,
  description TEXT,
  date DATE,
  created_at DATETIME
);
```

#### 2. AI功能集成
**目标**: 集成各种AI功能

**AI功能清单**:
- [ ] OpenAI API集成
- [ ] 本地轻量级模型 (Ollama)
- [ ] 文档向量化
- [ ] 智能问答
- [ ] 内容生成

#### 3. 云同步功能
**目标**: 实现数据的云端同步

**功能清单**:
- [ ] 用户认证
- [ ] 数据加密
- [ ] 增量同步
- [ ] 冲突解决
- [ ] 离线支持

### 第三阶段：高级功能和优化 (1-2周)

#### 1. 高级功能
- [ ] 多语言支持
- [ ] 主题切换
- [ ] 快捷键支持
- [ ] 数据导出/导入
- [ ] 备份恢复

#### 2. 性能优化
- [ ] 代码分割
- [ ] 懒加载
- [ ] 缓存优化
- [ ] 内存管理

#### 3. 用户体验优化
- [ ] 响应式设计
- [ ] 动画效果
- [ ] 错误处理
- [ ] 加载状态

## 🛠 技术栈

### 前端
- **框架**: React 18
- **UI库**: Ant Design 5
- **状态管理**: React Hooks + Context
- **路由**: 自定义路由系统
- **构建工具**: Webpack 5 + Babel

### 后端 (本地)
- **运行时**: Node.js (Electron)
- **数据库**: SQLite 3
- **API**: Express.js 或 FastAPI (Python)
- **AI集成**: OpenAI API + Ollama

### 桌面应用
- **框架**: Electron 28
- **打包**: Electron Builder
- **更新**: Electron Updater

## 📁 项目结构

```
CateringAI/
├── electron/                 # Electron主进程
│   ├── main.js              # 主进程入口
│   └── preload.js           # 预加载脚本
├── src/                     # React应用
│   ├── components/          # 通用组件
│   ├── pages/              # 页面组件
│   ├── services/           # 服务层
│   ├── utils/              # 工具函数
│   ├── styles/             # 样式文件
│   └── index.js            # 应用入口
├── server/                 # 后端服务 (可选)
│   ├── api/               # API路由
│   ├── services/          # 业务逻辑
│   └── database/          # 数据库
├── shared/                # 共享代码
├── assets/                # 静态资源
└── public/                # 公共文件
```

## 🚀 启动方式

### 开发环境
```bash
# 启动完整应用
start-full-app.bat

# 启动简单测试
start-direct-electron.bat

# 修复依赖
fix-dependencies.bat
```

### 生产环境
```bash
# 构建应用
npm run build

# 打包应用
npm run dist
```

## 📊 开发进度跟踪

### 本周目标
- [ ] 完善仪表盘功能
- [ ] 实现培训管理基础功能
- [ ] 设计数据库结构
- [ ] 集成SQLite

### 下周目标
- [ ] 完成SOP模块
- [ ] 实现成本分析功能
- [ ] 集成AI问答功能
- [ ] 测试云同步

## 🔧 开发工具

### 推荐工具
- **IDE**: VS Code
- **数据库工具**: DB Browser for SQLite
- **API测试**: Postman 或 Insomnia
- **版本控制**: Git

### 开发环境
- **Node.js**: v18+
- **npm**: v8+
- **Python**: v3.8+ (可选，用于AI功能)

---

**当前阶段**: 第一阶段 - 完善核心功能模块  
**预计完成时间**: 4-6周  
**优先级**: 培训管理 > SOP > 成本分析 > 智能问答 > 知识库 