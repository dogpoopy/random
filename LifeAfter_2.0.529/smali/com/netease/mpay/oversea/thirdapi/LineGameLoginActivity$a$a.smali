.class Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity$a$a;
.super Ljava/lang/Object;
.source "LineGameLoginActivity.java"

# interfaces
.implements Lcom/linecorp/trident/android/binding/CallBackListener2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity$a;->a(Z)V
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
.field final synthetic a:Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity$a;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity$a$a;->a:Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;Lcom/linecorp/trident/android/binding/Error;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string v0, ""

    const/16 v1, 0x65

    if-eqz p1, :cond_2

    .line 2
    invoke-static {}, Lcom/linecorp/trident/android/binding/AuthManager;->getInstance()Lcom/linecorp/trident/android/binding/AuthManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/linecorp/trident/android/binding/AuthManager;->getAccessToken()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {}, Lcom/linecorp/trident/android/binding/AuthManager;->getInstance()Lcom/linecorp/trident/android/binding/AuthManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/linecorp/trident/android/binding/AuthManager;->getUserKey()Ljava/lang/String;

    move-result-object p2

    .line 4
    new-instance v8, Ljava/util/HashSet;

    invoke-static {}, Lcom/linecorp/trident/android/binding/AuthManager;->getInstance()Lcom/linecorp/trident/android/binding/AuthManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/linecorp/trident/android/binding/AuthManager;->getPermissions()Ljava/util/Vector;

    move-result-object v2

    invoke-direct {v8, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 5
    invoke-static {}, Lcom/netease/mpay/oversea/cb;->c()Lcom/netease/mpay/oversea/cb;

    move-result-object v2

    const/4 v6, 0x0

    const-string v5, "verify"

    const-string v7, ""

    move-object v3, p2

    move-object v4, p1

    invoke-virtual/range {v2 .. v7}, Lcom/netease/mpay/oversea/cb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity$a$a;->a:Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity$a;

    iget-object v0, v0, Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity$a;->a:Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity;

    invoke-static {v0, p2, p1, v8}, Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity;->a(Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    goto :goto_3

    .line 10
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity$a$a;->a:Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity$a;

    iget-object p1, p1, Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity$a;->a:Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity;

    invoke-static {p1, v1, v0}, Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity;->a(Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity;ILjava/lang/String;)V

    goto :goto_3

    .line 15
    :cond_2
    invoke-static {}, Lcom/netease/mpay/oversea/cb;->c()Lcom/netease/mpay/oversea/cb;

    move-result-object v2

    if-eqz p2, :cond_3

    .line 16
    invoke-virtual {p2}, Lcom/linecorp/trident/android/binding/Error;->getCode()I

    move-result p1

    move v6, p1

    goto :goto_1

    :cond_3
    const/16 v6, 0x65

    :goto_1
    if-eqz p2, :cond_4

    .line 17
    invoke-virtual {p2}, Lcom/linecorp/trident/android/binding/Error;->getMessage()Ljava/lang/String;

    move-result-object p1

    move-object v7, p1

    goto :goto_2

    :cond_4
    move-object v7, v0

    :goto_2
    const-string v3, ""

    const-string v4, ""

    const-string v5, "refresh"

    .line 18
    invoke-virtual/range {v2 .. v7}, Lcom/netease/mpay/oversea/cb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    iget-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity$a$a;->a:Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity$a;

    iget-object p1, p1, Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity$a;->a:Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity;

    invoke-static {p1, v1, v0}, Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity;->a(Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity;ILjava/lang/String;)V

    :goto_3
    return-void
.end method

.method public bridge synthetic onCallback(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    check-cast p2, Lcom/linecorp/trident/android/binding/Error;

    invoke-virtual {p0, p1, p2}, Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity$a$a;->a(Ljava/lang/Boolean;Lcom/linecorp/trident/android/binding/Error;)V

    return-void
.end method
