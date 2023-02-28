package java_ee;

import javax.ejb.Stateless;

/**
 *
 * Author: DELL
 */
@Stateless
public class CalculosBean {

    int n1;
    int n2;

    public boolean puedeCalcular() {
        if (n1 > 0 && n2 > 0) {
            return true;
        }
        return false;
    }

    public int getResultado() {
        return n1 + n2;
    }

    public int getResta() {
        return n1 - n2;
    }

    public int getMultiplicacion() {
        return n1 * n2;
    }

    public double getDivision() {
        if (n2 != 0) {
            return (double) n1 / n2;
        } else {
            return Double.NaN;
        }
    }

    public int getN1() {
        return n1;
    }

    public void setN1(int n1) {
        this.n1 = n1;
    }

    public int getN2() {
        return n2;
    }

    public void setN2(int n2) {
        this.n2 = n2;
    }
}
