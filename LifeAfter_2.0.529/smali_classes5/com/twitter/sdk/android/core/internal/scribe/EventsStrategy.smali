.class public interface abstract Lcom/twitter/sdk/android/core/internal/scribe/EventsStrategy;
.super Ljava/lang/Object;
.source "EventsStrategy.java"

# interfaces
.implements Lcom/twitter/sdk/android/core/internal/scribe/FileRollOverManager;
.implements Lcom/twitter/sdk/android/core/internal/scribe/EventsManager;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/twitter/sdk/android/core/internal/scribe/FileRollOverManager;",
        "Lcom/twitter/sdk/android/core/internal/scribe/EventsManager<",
        "TT;>;"
    }
.end annotation


# virtual methods
.method public abstract getFilesSender()Lcom/twitter/sdk/android/core/internal/scribe/FilesSender;
.end method
