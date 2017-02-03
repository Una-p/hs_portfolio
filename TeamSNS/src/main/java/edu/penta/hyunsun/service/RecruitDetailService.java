package edu.penta.hyunsun.service;

import edu.penta.hyunsun.domain.ApplyProjectVO;
import edu.penta.hyunsun.domain.RecruitDetailDTO;

public interface RecruitDetailService {
	public abstract RecruitDetailDTO select(int rbno);
	public abstract int overLapTest(ApplyProjectVO vo);
	public abstract int create(ApplyProjectVO vo);
}
