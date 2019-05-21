package grupo3.cpf;

public class CountAlturasTransformer {

    private int altura;
    private long count;

    public CountAlturasTransformer(int altura, long count) {
        this.altura = altura;
        this.count = count;
    }

    /**
     * @return the altura
     */
    public int getAltura() {
        return altura;
    }

    /**
     * @param altura the altura to set
     */
    public void setAltura(int altura) {
        this.altura = altura;
    }

    /**
     * @return the count
     */
    public long getCount() {
        return count;
    }

    /**
     * @param count the count to set
     */
    public void setCount(long count) {
        this.count = count;
    }

}