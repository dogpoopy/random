.class Lcom/netease/mpay/oversea/thirdapi/n$a$a;
.super Ljava/lang/Object;
.source "LineGameApi.java"

# interfaces
.implements Lcom/linecorp/trident/android/binding/CallBackListener2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/thirdapi/n$a;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/linecorp/trident/android/binding/CallBackListener2<",
        "Ljava/lang/Boolean;",
        "Lcom/linecorp/trident/android/binding/Error;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/thirdapi/n$a;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/thirdapi/n$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/n$a$a;->a:Lcom/netease/mpay/oversea/thirdapi/n$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;Lcom/linecorp/trident/android/binding/Error;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, ""

    const/4 v2, -0x1

    if-eqz v0, :cond_2

    .line 2
    invoke-static {}, Lcom/linecorp/trident/android/binding/AuthManager;->getInstance()Lcom/linecorp/trident/android/binding/AuthManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/linecorp/trident/android/binding/AuthManager;->getAccessToken()Ljava/lang/String;

    move-result-object p2

    .line 3
    invoke-static {}, Lcom/linecorp/trident/android/binding/AuthManager;->getInstance()Lcom/linecorp/trident/android/binding/AuthManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/linecorp/trident/android/binding/AuthManager;->getUserKey()Ljava/lang/String;

    move-result-object v0

    .line 4
    new-instance v3, Ljava/util/HashSet;

    invoke-static {}, Lcom/linecorp/trident/android/binding/AuthManager;->getInstance()Lcom/linecorp/trident/android/binding/AuthManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/linecorp/trident/android/binding/AuthManager;->getPermissions()Ljava/util/Vector;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Line Game:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", uid:"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",token = "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 6
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    sget-object p1, Lcom/netease/mpay/oversea/thirdapi/n;->d:Lcom/netease/mpay/oversea/thirdapi/n$k;

    invoke-virtual {p1, v0, p2, v3}, Lcom/netease/mpay/oversea/thirdapi/n$k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    goto :goto_2

    .line 10
    :cond_1
    :goto_0
    sget-object p1, Lcom/netease/mpay/oversea/thirdapi/n;->d:Lcom/netease/mpay/oversea/thirdapi/n$k;

    invoke-virtual {p1, v2, v1}, Lcom/netease/mpay/oversea/thirdapi/n$k;->a(ILjava/lang/String;)V

    goto :goto_2

    .line 15
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Line Game:onFailure:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/linecorp/trident/android/binding/Error;->getMessage()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_3
    const-string p2, "unknown"

    :goto_1
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 16
    sget-object p1, Lcom/netease/mpay/oversea/thirdapi/n;->d:Lcom/netease/mpay/oversea/thirdapi/n$k;

    invoke-virtual {p1, v2, v1}, Lcom/netease/mpay/oversea/thirdapi/n$k;->a(ILjava/lang/String;)V

    :goto_2
    return-void
.end method

.method public bridge synthetic onCallback(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    check-cast p2, Lcom/linecorp/trident/android/binding/Error;

    invoke-virtual {p0, p1, p2}, Lcom/netease/mpay/oversea/thirdapi/n$a$a;->a(Ljava/lang/Boolean;Lcom/linecorp/trident/android/binding/Error;)V

    return-void
.end method
