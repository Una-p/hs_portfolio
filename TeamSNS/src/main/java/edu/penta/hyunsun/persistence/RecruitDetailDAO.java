package edu.penta.hyunsun.persistence;

import edu.penta.hyunsun.domain.ApplyProjectVO;
import edu.penta.hyunsun.domain.RecruitDetailDTO;

public interface RecruitDetailDAO {
	public abstract RecruitDetailDTO select(int rbno);
	public abstract int overlapTest1(ApplyProjectVO vo);
	public abstract int insert_apply(ApplyProjectVO vo);
}
