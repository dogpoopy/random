.class Lcom/netease/ntunisdk/google/GooglePGSV2Api$3;
.super Ljava/lang/Object;
.source "GooglePGSV2Api.java"

# interfaces
.implements Lcom/netease/ntunisdk/google/SignInCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/google/GooglePGSV2Api;->queryFriendList(Landroid/app/Activity;IZLcom/netease/ntunisdk/google/OnQueryFriendListCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/netease/ntunisdk/google/SignInCallback<",
        "Lcom/google/android/gms/games/Player;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/google/GooglePGSV2Api;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$queryFriendListCallBack:Lcom/netease/ntunisdk/google/OnQueryFriendListCallBack;

.field final synthetic val$retry:Z

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/google/GooglePGSV2Api;Landroid/app/Activity;Lcom/netease/ntunisdk/google/OnQueryFriendListCallBack;IZ)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/netease/ntunisdk/google/GooglePGSV2Api$3;->this$0:Lcom/netease/ntunisdk/google/GooglePGSV2Api;

    iput-object p2, p0, Lcom/netease/ntunisdk/google/GooglePGSV2Api$3;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/netease/ntunisdk/google/GooglePGSV2Api$3;->val$queryFriendListCallBack:Lcom/netease/ntunisdk/google/OnQueryFriendListCallBack;

    iput p4, p0, Lcom/netease/ntunisdk/google/GooglePGSV2Api$3;->val$type:I

    iput-boolean p5, p0, Lcom/netease/ntunisdk/google/GooglePGSV2Api$3;->val$retry:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed()V
    .locals 3

    .line 200
    iget-object v0, p0, Lcom/netease/ntunisdk/google/GooglePGSV2Api$3;->val$queryFriendListCallBack:Lcom/netease/ntunisdk/google/OnQueryFriendListCallBack;

    if-eqz v0, :cond_0

    .line 201
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iget v2, p0, Lcom/netease/ntunisdk/google/GooglePGSV2Api$3;->val$type:I

    invoke-interface {v0, v1, v2}, Lcom/netease/ntunisdk/google/OnQueryFriendListCallBack;->onFinish(Ljava/util/List;I)V

    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/google/android/gms/games/Player;)V
    .locals 3

    .line 143
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    .line 144
    iget-object v0, p0, Lcom/netease/ntunisdk/google/GooglePGSV2Api$3;->val$activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/gms/games/PlayGames;->getPlayersClient(Landroid/app/Activity;)Lcom/google/android/gms/games/PlayersClient;

    move-result-object v0

    const/16 v1, 0xc8

    const/4 v2, 0x0

    .line 145
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/games/PlayersClient;->loadFriends(IZ)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/netease/ntunisdk/google/GooglePGSV2Api$3$2;

    invoke-direct {v1, p0, p1}, Lcom/netease/ntunisdk/google/GooglePGSV2Api$3$2;-><init>(Lcom/netease/ntunisdk/google/GooglePGSV2Api$3;Ljava/util/List;)V

    .line 146
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/netease/ntunisdk/google/GooglePGSV2Api$3$1;

    invoke-direct {v1, p0, p1}, Lcom/netease/ntunisdk/google/GooglePGSV2Api$3$1;-><init>(Lcom/netease/ntunisdk/google/GooglePGSV2Api$3;Ljava/util/List;)V

    .line 166
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 140
    check-cast p1, Lcom/google/android/gms/games/Player;

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/google/GooglePGSV2Api$3;->onSuccess(Lcom/google/android/gms/games/Player;)V

    return-void
.end method
