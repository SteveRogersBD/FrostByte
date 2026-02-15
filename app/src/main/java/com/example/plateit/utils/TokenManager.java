package com.example.plateit.utils;

import android.content.Context;
import androidx.annotation.NonNull;

public class TokenManager {
    private static TokenManager instance;

    private TokenManager(Context context) {
    }

    public static synchronized TokenManager getInstance(Context context) {
        if (instance == null) {
            instance = new TokenManager(context.getApplicationContext());
        }
        return instance;
    }

    public int getTokens() {
        return 999; // Unlimited tokens for everyone
    }

    public boolean canAfford(int cost) {
        return true; // Everything is free
    }

    public boolean useTokens(int cost) {
        return true; // Everything is free
    }

    public void addTokens(int amount) {
        // No-op
    }

    private void checkMonthlyReset() {
        // No-op
    }

    private void resetTokens(int amount) {
        // No-op
    }

    // Helper to check pro status asynchronously with a callback
    public void isPro(final ProStatusCallback callback) {
        // Everyone is PRO
        callback.onResult(true);
    }

    // Force refresh status - now a no-op since everyone is Pro
    public void forceRefreshProStatus(@androidx.annotation.Nullable final Runnable onComplete) {
        if (onComplete != null) {
            onComplete.run();
        }
    }

    public void syncWithCustomerInfo() {
        // No-op
    }

    public boolean isPro() {
        return true; // Everyone is Pro
    }

    public interface ProStatusCallback {
        void onResult(boolean isPro);
    }
}
