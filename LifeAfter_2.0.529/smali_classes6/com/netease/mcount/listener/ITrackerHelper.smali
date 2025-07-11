.class public interface abstract Lcom/netease/mcount/listener/ITrackerHelper;
.super Ljava/lang/Object;


# virtual methods
.method public abstract getAppKey()Ljava/lang/String;
.end method

.method public abstract getLibTag()Ljava/lang/String;
.end method

.method public abstract getTrackName(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract getTrackProperties(Landroid/content/Context;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isIgnored()Z
.end method
