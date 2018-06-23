package Bean;

public class item{
	int id, price,vnv;
	String name, content,category, image;

	public void setId(int value){
		id = value;
	}

	public void setCategory(String value){
		category = value;
	}

	public void setPrice(int value){
		price = value;
	}

	public void setName(String value){
		name = value;
	}

	public void setContent(String value){
		content = value;
	}

	public void setVnv(int value){
		vnv = value;
	}

	public void setImage(String value){
		image = value;
	}

	public int getId(){
		return id;
	}

	public String getCategory(){
		return category;
	}

	public int getPrice(){
		return price;
	}

	public String getName(){
		return name;
	}

	public String getContent(){
		return content;
	}

	public int getVnv(){
		return vnv;
	} 

	public String getImage(){
		return image;
	}
}