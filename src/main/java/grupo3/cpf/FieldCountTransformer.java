package grupo3.cpf;

public class FieldCountTransformer {

    private String field;
    private Long count;

    public FieldCountTransformer(String field, Long count) {
        this.field = field;
        this.count = count;
    }

    /**
     * @return the field
     */
    public String getField() {
        return field;
    }

    /**
     * @param field the field to set
     */
    public void setField(String field) {
        this.field = field;
    }

    /**
     * @return the count
     */
    public Long getCount() {
        return count;
    }

    /**
     * @param count the count to set
     */
    public void setCount(Long count) {
        this.count = count;
    }

    @Override
    public String toString() {
        return "FieldCountTransformer [count=" + count + ", field=" + field + "]";
    }
    
}