.class Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity$b;
.super Ljava/lang/Object;
.source "LineGameLoginActivity.java"

# interfaces
.implements Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity$b;->a:Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "line game"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    const/16 v2, 0x65

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity$b;->a:Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity;

    invoke-static {p1, v2, v0}, Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity;->a(Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity;ILjava/lang/String;)V

    return-void

    .line 6
    :cond_0
    invoke-static {}, Lcom/linecorp/trident/android/binding/AuthManager;->getInstance()Lcom/linecorp/trident/android/binding/AuthManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/linecorp/trident/android/binding/AuthManager;->isAuthorized()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    invoke-static {}, Lcom/linecorp/trident/android/binding/AuthManager;->getInstance()Lcom/linecorp/trident/android/binding/AuthManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/linecorp/trident/android/binding/AuthManager;->getAccessToken()Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-static {}, Lcom/linecorp/trident/android/binding/AuthManager;->getInstance()Lcom/linecorp/trident/android/binding/AuthManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/linecorp/trident/android/binding/AuthManager;->getUserKey()Ljava/lang/String;

    move-result-object v3

    .line 9
    new-instance v4, Ljava/util/HashSet;

    invoke-static {}, Lcom/linecorp/trident/android/binding/AuthManager;->getInstance()Lcom/linecorp/trident/android/binding/AuthManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/linecorp/trident/android/binding/AuthManager;->getPermissions()Ljava/util/Vector;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 10
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Line Game:onSuccess, uid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",token = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 12
    iget-object v0, p0, Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity$b;->a:Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity;

    invoke-static {v0, v3, p1, v4}, Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity;->a(Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    return-void

    .line 16
    :cond_1
    invoke-static {}, Lcom/linecorp/trident/android/binding/AuthManager;->getInstance()Lcom/linecorp/trident/android/binding/AuthManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/linecorp/trident/android/binding/AuthManager;->isAuthorizing()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 17
    iget-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity$b;->a:Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity;

    invoke-static {p1, v2, v0}, Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity;->a(Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity;ILjava/lang/String;)V

    return-void

    .line 20
    :cond_2
    invoke-static {}, Lcom/linecorp/trident/android/binding/AuthManager;->getInstance()Lcom/linecorp/trident/android/binding/AuthManager;

    move-result-object p1

    new-instance v0, Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity$b$a;

    invoke-direct {v0, p0}, Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity$b$a;-><init>(Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity$b;)V

    invoke-virtual {p1, v0}, Lcom/linecorp/trident/android/binding/AuthManager;->refreshFromTermExpiresTime(Lcom/linecorp/trident/android/binding/CallBackListener2;)V

    return-void
.end method
