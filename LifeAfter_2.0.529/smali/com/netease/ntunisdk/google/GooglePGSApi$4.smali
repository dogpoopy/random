.class Lcom/netease/ntunisdk/google/GooglePGSApi$4;
.super Ljava/lang/Object;
.source "GooglePGSApi.java"

# interfaces
.implements Lcom/netease/ntunisdk/google/SignInCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/google/GooglePGSApi;->queryFriendList(Landroid/app/Activity;IZLcom/netease/ntunisdk/google/OnQueryFriendListCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/netease/ntunisdk/google/SignInCallback<",
        "Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/google/GooglePGSApi;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$queryFriendListCallBack:Lcom/netease/ntunisdk/google/OnQueryFriendListCallBack;

.field final synthetic val$retry:Z

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/google/GooglePGSApi;Landroid/app/Activity;Lcom/netease/ntunisdk/google/OnQueryFriendListCallBack;IZ)V
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/netease/ntunisdk/google/GooglePGSApi$4;->this$0:Lcom/netease/ntunisdk/google/GooglePGSApi;

    iput-object p2, p0, Lcom/netease/ntunisdk/google/GooglePGSApi$4;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/netease/ntunisdk/google/GooglePGSApi$4;->val$queryFriendListCallBack:Lcom/netease/ntunisdk/google/OnQueryFriendListCallBack;

    iput p4, p0, Lcom/netease/ntunisdk/google/GooglePGSApi$4;->val$type:I

    iput-boolean p5, p0, Lcom/netease/ntunisdk/google/GooglePGSApi$4;->val$retry:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed()V
    .locals 3

    .line 296
    iget-object v0, p0, Lcom/netease/ntunisdk/google/GooglePGSApi$4;->val$queryFriendListCallBack:Lcom/netease/ntunisdk/google/OnQueryFriendListCallBack;

    if-eqz v0, :cond_0

    .line 297
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iget v2, p0, Lcom/netease/ntunisdk/google/GooglePGSApi$4;->val$type:I

    invoke-interface {v0, v1, v2}, Lcom/netease/ntunisdk/google/OnQueryFriendListCallBack;->onFinish(Ljava/util/List;I)V

    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
    .locals 3

    .line 228
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 229
    iget-object v1, p0, Lcom/netease/ntunisdk/google/GooglePGSApi$4;->this$0:Lcom/netease/ntunisdk/google/GooglePGSApi;

    invoke-static {v1}, Lcom/netease/ntunisdk/google/GooglePGSApi;->access$300(Lcom/netease/ntunisdk/google/GooglePGSApi;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 233
    iget-object v1, p0, Lcom/netease/ntunisdk/google/GooglePGSApi$4;->val$activity:Landroid/app/Activity;

    invoke-static {v1, p1}, Lcom/google/android/gms/games/Games;->getPlayersClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/games/PlayersClient;

    move-result-object p1

    const/16 v1, 0xc8

    const/4 v2, 0x0

    .line 234
    invoke-interface {p1, v1, v2}, Lcom/google/android/gms/games/PlayersClient;->loadFriends(IZ)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v1, Lcom/netease/ntunisdk/google/GooglePGSApi$4$2;

    invoke-direct {v1, p0, v0}, Lcom/netease/ntunisdk/google/GooglePGSApi$4$2;-><init>(Lcom/netease/ntunisdk/google/GooglePGSApi$4;Ljava/util/List;)V

    .line 235
    invoke-virtual {p1, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v1, Lcom/netease/ntunisdk/google/GooglePGSApi$4$1;

    invoke-direct {v1, p0, v0}, Lcom/netease/ntunisdk/google/GooglePGSApi$4$1;-><init>(Lcom/netease/ntunisdk/google/GooglePGSApi$4;Ljava/util/List;)V

    .line 256
    invoke-virtual {p1, v1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    goto :goto_0

    .line 288
    :cond_0
    iget-object p1, p0, Lcom/netease/ntunisdk/google/GooglePGSApi$4;->val$queryFriendListCallBack:Lcom/netease/ntunisdk/google/OnQueryFriendListCallBack;

    if-eqz p1, :cond_1

    .line 289
    iget v1, p0, Lcom/netease/ntunisdk/google/GooglePGSApi$4;->val$type:I

    invoke-interface {p1, v0, v1}, Lcom/netease/ntunisdk/google/OnQueryFriendListCallBack;->onFinish(Ljava/util/List;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 225
    check-cast p1, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/google/GooglePGSApi$4;->onSuccess(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    return-void
.end method
