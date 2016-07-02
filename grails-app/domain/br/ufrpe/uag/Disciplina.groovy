package br.ufrpe.uag

class Disciplina {
	
	String codigoDisciplina
	String nomeDisciplina
	int periodo
	String semestre
	String turma
	int cargaHoraria

	//TODO incluir disciplinas pre-requisitos
	//TODO incluir professores responsaveis
	//TODO incluir alunos

    static constraints = {
		nomeDisciplina size: 5..120		
		codigoDisciplina blank: false		
		cargaHoraria blank: false	
		turma blank: false		
		semestre blank: false
    }
	
	static mapping = { id generator: 'increment' }
	
	/* (non-Javadoc)
	 * @see java.lang.Object#hashCode()
	 */
	@Override
	public int hashCode() {
		final int prime = 31
		int result = 1
		result = prime * result + cargaHoraria
		result = prime * result + ((codigoDisciplina == null) ? 0 : codigoDisciplina.hashCode())
		result = prime * result + ((nomeDisciplina == null) ? 0 : nomeDisciplina.hashCode())
		result = prime * result + periodo
		result = prime * result + ((semestre == null) ? 0 : semestre.hashCode())
		result = prime * result + ((turma == null) ? 0 : turma.hashCode())
		return result
	}

	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "Disciplina [codigoDisciplina=" + codigoDisciplina
				+ ", nomeDisciplina=" + nomeDisciplina + ", periodo=" + periodo
				+ ", semestre=" + semestre + ", turma=" + turma
				+ ", cargaHoraria=" + cargaHoraria + ", hashCode()="
				+ hashCode() + "]";
	}

	/* (non-Javadoc)
	 * @see java.lang.Object#equals(java.lang.Object)
	 */
	@Override
	public boolean equals(Object obj) {		
		if (this == obj)
			return true;			
		if (obj == null)
			return false;			
		if (!(obj instanceof Disciplina))
			return false;			
		Disciplina other = (Disciplina) obj;
		if (cargaHoraria != other.cargaHoraria)
			return false;			
		if (codigoDisciplina == null) {
			if (other.codigoDisciplina != null)
				return false;				
		} else if (!codigoDisciplina.equals(other.codigoDisciplina))
			return false;			
		if (nomeDisciplina == null) {
			if (other.nomeDisciplina != null)
				return false;				
		} else if (!nomeDisciplina.equals(other.nomeDisciplina))
			return false;			
		if (periodo != other.periodo)
			return false;			
		if (semestre == null) {
			if (other.semestre != null)
				return false;				
		} else if (!semestre.equals(other.semestre))
			return false;			
		if (turma == null) {
			if (other.turma != null)
				return false;				
		} else if (!turma.equals(other.turma))
			return false;			
		return true;
	}
}
