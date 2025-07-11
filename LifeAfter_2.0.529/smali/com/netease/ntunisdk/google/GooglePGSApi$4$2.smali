.class Lcom/netease/ntunisdk/google/GooglePGSApi$4$2;
.super Ljava/lang/Object;
.source "GooglePGSApi.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/google/GooglePGSApi$4;->onSuccess(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnSuccessListener<",
        "Lcom/google/android/gms/games/AnnotatedData<",
        "Lcom/google/android/gms/games/PlayerBuffer;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/netease/ntunisdk/google/GooglePGSApi$4;

.field final synthetic val$list:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/google/GooglePGSApi$4;Ljava/util/List;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/netease/ntunisdk/google/GooglePGSApi$4$2;->this$1:Lcom/netease/ntunisdk/google/GooglePGSApi$4;

    iput-object p2, p0, Lcom/netease/ntunisdk/google/GooglePGSApi$4$2;->val$list:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcom/google/android/gms/games/AnnotatedData;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/games/AnnotatedData<",
            "Lcom/google/android/gms/games/PlayerBuffer;",
            ">;)V"
        }
    .end annotation

    .line 238
    invoke-virtual {p1}, Lcom/google/android/gms/games/AnnotatedData;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/games/PlayerBuffer;

    .line 239
    invoke-virtual {p1}, Lcom/google/android/gms/games/PlayerBuffer;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/Player;

    .line 240
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GooglePGSApi"

    invoke-static {v2, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    new-instance v1, Lcom/netease/ntunisdk/base/AccountInfo;

    invoke-direct {v1}, Lcom/netease/ntunisdk/base/AccountInfo;-><init>()V

    .line 242
    invoke-interface {v0}, Lcom/google/android/gms/games/Player;->getPlayerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netease/ntunisdk/base/AccountInfo;->setAccountId(Ljava/lang/String;)V

    .line 243
    invoke-interface {v0}, Lcom/google/android/gms/games/Player;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netease/ntunisdk/base/AccountInfo;->setNickname(Ljava/lang/String;)V

    .line 244
    invoke-interface {v0}, Lcom/google/android/gms/games/Player;->getIconImageUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 246
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/netease/ntunisdk/base/AccountInfo;->setIcon(Ljava/lang/String;)V

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/google/GooglePGSApi$4$2;->val$list:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 251
    :cond_1
    iget-object p1, p0, Lcom/netease/ntunisdk/google/GooglePGSApi$4$2;->this$1:Lcom/netease/ntunisdk/google/GooglePGSApi$4;

    iget-object p1, p1, Lcom/netease/ntunisdk/google/GooglePGSApi$4;->val$queryFriendListCallBack:Lcom/netease/ntunisdk/google/OnQueryFriendListCallBack;

    if-eqz p1, :cond_2

    .line 252
    iget-object p1, p0, Lcom/netease/ntunisdk/google/GooglePGSApi$4$2;->this$1:Lcom/netease/ntunisdk/google/GooglePGSApi$4;

    iget-object p1, p1, Lcom/netease/ntunisdk/google/GooglePGSApi$4;->val$queryFriendListCallBack:Lcom/netease/ntunisdk/google/OnQueryFriendListCallBack;

    iget-object v0, p0, Lcom/netease/ntunisdk/google/GooglePGSApi$4$2;->val$list:Ljava/util/List;

    iget-object v1, p0, Lcom/netease/ntunisdk/google/GooglePGSApi$4$2;->this$1:Lcom/netease/ntunisdk/google/GooglePGSApi$4;

    iget v1, v1, Lcom/netease/ntunisdk/google/GooglePGSApi$4;->val$type:I

    invoke-interface {p1, v0, v1}, Lcom/netease/ntunisdk/google/OnQueryFriendListCallBack;->onFinish(Ljava/util/List;I)V

    :cond_2
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 235
    check-cast p1, Lcom/google/android/gms/games/AnnotatedData;

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/google/GooglePGSApi$4$2;->onSuccess(Lcom/google/android/gms/games/AnnotatedData;)V

    return-void
.end method
