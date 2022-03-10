aluno(andre,ia).
aluno(andressa,ia).
aluno(isabela,se).
aluno(lucas,redes).
aluno(eduardo,redes).

frequenta(andre,unifenas).
frequenta(andressa,unifenas).
frequenta(isabela,ufrj).
frequenta(lucas,ufrj).
frequenta(eduardo,unifenas).

professor(flavia,ia).
professor(celso,se).
professor(camila,redes).

funcionario(flavia,unifenas).
funcionario(celso,ufrj).
funcionario(camila,unifenas).

alunos(Alu,Prof):-aluno(Alu,Disciplina),professor(Prof,Disciplina).
vinculo(Uni,Pes):-frequenta(Pes,Uni);funcionario(Pes,Uni).
