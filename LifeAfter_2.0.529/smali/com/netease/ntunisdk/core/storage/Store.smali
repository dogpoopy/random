.class public interface abstract Lcom/netease/ntunisdk/core/storage/Store;
.super Ljava/lang/Object;


# virtual methods
.method public abstract clear()Z
.end method

.method public abstract contains(Ljava/lang/String;)Z
.end method

.method public abstract delete(Ljava/lang/String;)Z
.end method

.method public abstract get(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getAll()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllKeys()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSize()I
.end method

.method public abstract getUDID(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract peak()Ljava/lang/String;
.end method

.method public abstract pop()Ljava/lang/String;
.end method

.method public abstract save(Ljava/lang/String;Ljava/lang/String;)Z
.end method
