.class Lcom/netease/ntunisdk/google/GooglePGSV2Api$3$1;
.super Ljava/lang/Object;
.source "GooglePGSV2Api.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/google/GooglePGSV2Api$3;->onSuccess(Lcom/google/android/gms/games/Player;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/netease/ntunisdk/google/GooglePGSV2Api$3;

.field final synthetic val$list:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/google/GooglePGSV2Api$3;Ljava/util/List;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/netease/ntunisdk/google/GooglePGSV2Api$3$1;->this$1:Lcom/netease/ntunisdk/google/GooglePGSV2Api$3;

    iput-object p2, p0, Lcom/netease/ntunisdk/google/GooglePGSV2Api$3$1;->val$list:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .locals 9

    .line 170
    iget-object v0, p0, Lcom/netease/ntunisdk/google/GooglePGSV2Api$3$1;->this$1:Lcom/netease/ntunisdk/google/GooglePGSV2Api$3;

    iget-boolean v0, v0, Lcom/netease/ntunisdk/google/GooglePGSV2Api$3;->val$retry:Z

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/google/android/gms/games/FriendsResolutionRequiredException;

    if-eqz v0, :cond_0

    .line 171
    check-cast p1, Lcom/google/android/gms/games/FriendsResolutionRequiredException;

    .line 173
    invoke-virtual {p1}, Lcom/google/android/gms/games/FriendsResolutionRequiredException;->getResolution()Landroid/app/PendingIntent;

    move-result-object p1

    .line 175
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/google/GooglePGSV2Api$3$1;->this$1:Lcom/netease/ntunisdk/google/GooglePGSV2Api$3;

    iget-object v0, v0, Lcom/netease/ntunisdk/google/GooglePGSV2Api$3;->this$0:Lcom/netease/ntunisdk/google/GooglePGSV2Api;

    iget-object v1, p0, Lcom/netease/ntunisdk/google/GooglePGSV2Api$3$1;->this$1:Lcom/netease/ntunisdk/google/GooglePGSV2Api$3;

    iget v1, v1, Lcom/netease/ntunisdk/google/GooglePGSV2Api$3;->val$type:I

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/google/GooglePGSV2Api;->access$102(Lcom/netease/ntunisdk/google/GooglePGSV2Api;I)I

    .line 176
    iget-object v0, p0, Lcom/netease/ntunisdk/google/GooglePGSV2Api$3$1;->this$1:Lcom/netease/ntunisdk/google/GooglePGSV2Api$3;

    iget-object v1, v0, Lcom/netease/ntunisdk/google/GooglePGSV2Api$3;->val$activity:Landroid/app/Activity;

    .line 177
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v2

    .line 178
    invoke-static {}, Lcom/netease/ntunisdk/google/GooglePGSV2Api;->access$200()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 176
    invoke-virtual/range {v1 .. v8}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 186
    invoke-virtual {p1}, Landroid/content/IntentSender$SendIntentException;->printStackTrace()V

    goto :goto_0

    .line 189
    :cond_0
    iget-object p1, p0, Lcom/netease/ntunisdk/google/GooglePGSV2Api$3$1;->this$1:Lcom/netease/ntunisdk/google/GooglePGSV2Api$3;

    iget-object p1, p1, Lcom/netease/ntunisdk/google/GooglePGSV2Api$3;->val$queryFriendListCallBack:Lcom/netease/ntunisdk/google/OnQueryFriendListCallBack;

    if-eqz p1, :cond_1

    .line 190
    iget-object p1, p0, Lcom/netease/ntunisdk/google/GooglePGSV2Api$3$1;->this$1:Lcom/netease/ntunisdk/google/GooglePGSV2Api$3;

    iget-object p1, p1, Lcom/netease/ntunisdk/google/GooglePGSV2Api$3;->val$queryFriendListCallBack:Lcom/netease/ntunisdk/google/OnQueryFriendListCallBack;

    iget-object v0, p0, Lcom/netease/ntunisdk/google/GooglePGSV2Api$3$1;->val$list:Ljava/util/List;

    iget-object v1, p0, Lcom/netease/ntunisdk/google/GooglePGSV2Api$3$1;->this$1:Lcom/netease/ntunisdk/google/GooglePGSV2Api$3;

    iget v1, v1, Lcom/netease/ntunisdk/google/GooglePGSV2Api$3;->val$type:I

    invoke-interface {p1, v0, v1}, Lcom/netease/ntunisdk/google/OnQueryFriendListCallBack;->onFinish(Ljava/util/List;I)V

    :cond_1
    :goto_0
    return-void
.end method
