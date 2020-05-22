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

}
