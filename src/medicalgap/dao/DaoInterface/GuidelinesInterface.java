package medicalgap.dao.DaoInterface;




import java.util.List;

import medicalgap.dao.entity.Guidelines;

public interface GuidelinesInterface {

	public Guidelines addGuideline(Guidelines guideline);
	public void deleteGuideline(Guidelines guideline);
	public Guidelines updateGuideline(Guidelines guideline);
	public Guidelines getGuideline(long id_guideline);
	public List<Guidelines> getAllGuidelines();
	public List<Guidelines> getAllGuidelines(String categorie);
	public List<Guidelines> getAllGuidelines(String categorie,String type);
}
