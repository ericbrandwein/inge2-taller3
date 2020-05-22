import org.autotest.StackAr;
import org.junit.Test;

import static org.junit.Assert.assertEquals;

public class CustomTest {
    @Test
    public void testPopReturnsTheElementPopped() {
        StackAr stack = new StackAr(1);
        Object element = 1;

        stack.push(element);

        assertEquals(element, stack.pop());
    }

    /**
     * Este es un mal test, no hay que fijarse que hashCode() devuelva
     * un número en particular, sino sólo que devuelva el mismo número para
     * objetos iguales.
     */
    @Test
    public void testToKillHashCodeMutants() {
        StackAr stack = new StackAr(1);

        assertEquals(1921, stack.hashCode());
    }

}
