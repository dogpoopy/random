.class public interface abstract Lcom/netease/ntunisdk/base/QueryFriendListener;
.super Ljava/lang/Object;
.source "QueryFriendListener.java"


# virtual methods
.method public abstract onApplyFriendFinished(Z)V
.end method

.method public abstract onInviteFriendListFinished(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onInviterListFinished(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netease/ntunisdk/base/AccountInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onIsDarenUpdated(Z)V
.end method

.method public abstract onQueryAvailablesInviteesFinished(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netease/ntunisdk/base/AccountInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onQueryFriendListFinished(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netease/ntunisdk/base/AccountInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onQueryFriendListInGameFinished(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netease/ntunisdk/base/AccountInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onQueryMyAccountFinished(Lcom/netease/ntunisdk/base/AccountInfo;)V
.end method
