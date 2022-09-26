import java.util.HashMap;

public class Hashmatique {
    public static void main(String[] args) {
        HashMap<String, String> map = new HashMap<String, String>();
        map.put("Die for You", "Even though we're going through it...");
        map.put("The Hills", "I only call you when it's half past five");
        map.put("Out of Time", "Now, I can't keep you from loving him");
        map.put("Take my Breath", "TAKE MY BREATH, away..");

        String val = map.get("The Hills");
        System.out.println(val);

        for (String key : map.keySet()) {
            System.out.println(String.format("Track: %s: Lyrics: %s", key, map.get(key)));
        }
    }
}