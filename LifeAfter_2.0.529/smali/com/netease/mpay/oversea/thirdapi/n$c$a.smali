.class Lcom/netease/mpay/oversea/thirdapi/n$c$a;
.super Ljava/lang/Object;
.source "LineGameApi.java"

# interfaces
.implements Lcom/linecorp/trident/android/binding/CallBackListener2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/thirdapi/n$c;->a(Z)V
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
.field final synthetic a:Lcom/netease/mpay/oversea/thirdapi/n$c;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/thirdapi/n$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/n$c$a;->a:Lcom/netease/mpay/oversea/thirdapi/n$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;Lcom/linecorp/trident/android/binding/Error;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string p2, ""

    const/16 v0, 0x65

    if-eqz p1, :cond_2

    .line 2
    invoke-static {}, Lcom/linecorp/trident/android/binding/AuthManager;->getInstance()Lcom/linecorp/trident/android/binding/AuthManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/linecorp/trident/android/binding/AuthManager;->getAccessToken()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {}, Lcom/linecorp/trident/android/binding/AuthManager;->getInstance()Lcom/linecorp/trident/android/binding/AuthManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/linecorp/trident/android/binding/AuthManager;->getUserKey()Ljava/lang/String;

    move-result-object v1

    .line 4
    new-instance v2, Ljava/util/HashSet;

    invoke-static {}, Lcom/linecorp/trident/android/binding/AuthManager;->getInstance()Lcom/linecorp/trident/android/binding/AuthManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/linecorp/trident/android/binding/AuthManager;->getPermissions()Ljava/util/Vector;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    sget-object p2, Lcom/netease/mpay/oversea/thirdapi/n;->d:Lcom/netease/mpay/oversea/thirdapi/n$k;

    invoke-virtual {p2, v1, p1, v2}, Lcom/netease/mpay/oversea/thirdapi/n$k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    goto :goto_1

    .line 9
    :cond_1
    :goto_0
    sget-object p1, Lcom/netease/mpay/oversea/thirdapi/n;->d:Lcom/netease/mpay/oversea/thirdapi/n$k;

    invoke-virtual {p1, v0, p2}, Lcom/netease/mpay/oversea/thirdapi/n$k;->a(ILjava/lang/String;)V

    goto :goto_1

    .line 14
    :cond_2
    sget-object p1, Lcom/netease/mpay/oversea/thirdapi/n;->d:Lcom/netease/mpay/oversea/thirdapi/n$k;

    invoke-virtual {p1, v0, p2}, Lcom/netease/mpay/oversea/thirdapi/n$k;->a(ILjava/lang/String;)V

    :goto_1
    return-void
.end method

.method public bridge synthetic onCallback(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    check-cast p2, Lcom/linecorp/trident/android/binding/Error;

    invoke-virtual {p0, p1, p2}, Lcom/netease/mpay/oversea/thirdapi/n$c$a;->a(Ljava/lang/Boolean;Lcom/linecorp/trident/android/binding/Error;)V

    return-void
.end method
