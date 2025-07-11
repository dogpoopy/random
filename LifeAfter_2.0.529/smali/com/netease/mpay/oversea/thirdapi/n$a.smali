.class Lcom/netease/mpay/oversea/thirdapi/n$a;
.super Ljava/lang/Object;
.source "LineGameApi.java"

# interfaces
.implements Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/thirdapi/n;->a(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/thirdapi/n;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/thirdapi/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/n$a;->a:Lcom/netease/mpay/oversea/thirdapi/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    const-string v0, ""

    const/4 v1, -0x1

    if-nez p1, :cond_0

    .line 3
    sget-object p1, Lcom/netease/mpay/oversea/thirdapi/n;->d:Lcom/netease/mpay/oversea/thirdapi/n$k;

    invoke-virtual {p1, v1, v0}, Lcom/netease/mpay/oversea/thirdapi/n$k;->a(ILjava/lang/String;)V

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

    move-result-object v2

    invoke-virtual {v2}, Lcom/linecorp/trident/android/binding/AuthManager;->getUserKey()Ljava/lang/String;

    move-result-object v2

    .line 9
    new-instance v3, Ljava/util/HashSet;

    invoke-static {}, Lcom/linecorp/trident/android/binding/AuthManager;->getInstance()Lcom/linecorp/trident/android/binding/AuthManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/linecorp/trident/android/binding/AuthManager;->getPermissions()Ljava/util/Vector;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 10
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Line Game:onSuccess, uid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",token = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 11
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 12
    sget-object v0, Lcom/netease/mpay/oversea/thirdapi/n;->d:Lcom/netease/mpay/oversea/thirdapi/n$k;

    invoke-virtual {v0, v2, p1, v3}, Lcom/netease/mpay/oversea/thirdapi/n$k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    return-void

    .line 16
    :cond_1
    invoke-static {}, Lcom/linecorp/trident/android/binding/AuthManager;->getInstance()Lcom/linecorp/trident/android/binding/AuthManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/linecorp/trident/android/binding/AuthManager;->isAuthorizing()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "Line Game:failed,isAuthorizing"

    .line 17
    invoke-static {p1}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 18
    sget-object p1, Lcom/netease/mpay/oversea/thirdapi/n;->d:Lcom/netease/mpay/oversea/thirdapi/n$k;

    invoke-virtual {p1, v1, v0}, Lcom/netease/mpay/oversea/thirdapi/n$k;->a(ILjava/lang/String;)V

    return-void

    .line 21
    :cond_2
    invoke-static {}, Lcom/linecorp/trident/android/binding/AuthManager;->getInstance()Lcom/linecorp/trident/android/binding/AuthManager;

    move-result-object p1

    new-instance v0, Lcom/netease/mpay/oversea/thirdapi/n$a$a;

    invoke-direct {v0, p0}, Lcom/netease/mpay/oversea/thirdapi/n$a$a;-><init>(Lcom/netease/mpay/oversea/thirdapi/n$a;)V

    invoke-virtual {p1, v0}, Lcom/linecorp/trident/android/binding/AuthManager;->refresh(Lcom/linecorp/trident/android/binding/CallBackListener2;)V

    return-void
.end method
