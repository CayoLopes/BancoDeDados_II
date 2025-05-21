from sqlalchemy import create_engine, Column, Integer, String, Date, ForeignKey
from sqlalchemy.orm import declarative_base, relationship, Session

Base = declarative_base()

class Projeto(Base):
    __tablename__ = 'projeto'
    codigo = Column(Integer, primary_key=True)
    nome = Column(String)
    cod_responsavel = Column(Integer)
    atividades = relationship("AtividadeProjeto", back_populates="projeto")

class Atividade(Base):
    __tablename__ = 'atividade'
    codigo = Column(Integer, primary_key=True)
    nome = Column(String)
    descricao = Column(String)
    cod_responsavel = Column(Integer)
    data_inicio = Column(Date)
    data_fim = Column(Date)
    projetos = relationship("AtividadeProjeto", back_populates="atividade")

class AtividadeProjeto(Base):
    __tablename__ = 'atividade_projeto'
    cod_projeto = Column(Integer, ForeignKey('projeto.codigo'), primary_key=True)
    cod_atividade = Column(Integer, ForeignKey('atividade.codigo'), primary_key=True)
    projeto = relationship("Projeto", back_populates="atividades")
    atividade = relationship("Atividade", back_populates="projetos")

# Conexão SQLAlchemy
engine = create_engine("postgresql+psycopg2://postgres:postgres@localhost:5432/atividadesbd", echo=True)
Base.metadata.create_all(engine)
session = Session(engine)

# Inserir nova atividade
nova_atividade = Atividade(
    nome="Planejamento de Tarefa",
    descricao="Atividade criada com ORM",
    cod_responsavel=2,
    data_inicio="2025-05-20",
    data_fim="2025-05-25"
)
session.add(nova_atividade)
session.commit()

# Atualizar líder de um projeto
projeto = session.query(Projeto).filter_by(codigo=1).first()
if projeto:
    projeto.cod_responsavel = 3
    session.commit()

# Listar projetos e atividades
atividades = session.query(Projeto.nome, Atividade.nome).join(AtividadeProjeto).join(Atividade).all()
for projeto_nome, atividade_nome in atividades:
    print(f"Projeto: {projeto_nome} | Atividade: {atividade_nome}")

session.close()