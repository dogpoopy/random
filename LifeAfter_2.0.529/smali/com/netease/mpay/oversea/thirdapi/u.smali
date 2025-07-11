.class public Lcom/netease/mpay/oversea/thirdapi/u;
.super Lcom/netease/mpay/oversea/thirdapi/c;
.source "VkIdApi.java"


# instance fields
.field private d:Lcom/vk/id/VKID;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/thirdapi/c;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/thirdapi/u;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/u;->e:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public a(Landroid/app/Activity;Lcom/netease/mpay/oversea/s9;)Lcom/netease/mpay/oversea/thirdapi/c;
    .locals 2

    .line 2
    new-instance v0, Lcom/vk/id/VKID;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vk/id/VKID;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netease/mpay/oversea/thirdapi/u;->d:Lcom/vk/id/VKID;

    .line 3
    invoke-super {p0, p1, p2}, Lcom/netease/mpay/oversea/thirdapi/c;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/s9;)Lcom/netease/mpay/oversea/thirdapi/c;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/netease/mpay/oversea/n6;",
            ">;"
        }
    .end annotation

    .line 36
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_0

    .line 38
    new-instance v0, Lcom/netease/mpay/oversea/a0;

    const-string v1, "access_token"

    invoke-direct {v0, v1, p2}, Lcom/netease/mpay/oversea/a0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    :cond_0
    iget-object p2, p0, Lcom/netease/mpay/oversea/thirdapi/u;->e:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 41
    new-instance p2, Lcom/netease/mpay/oversea/a0;

    iget-object v0, p0, Lcom/netease/mpay/oversea/thirdapi/u;->e:Ljava/lang/String;

    const-string v1, "email"

    invoke-direct {p2, v1, v0}, Lcom/netease/mpay/oversea/a0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object p1
.end method

.method public a(Landroid/app/Activity;)V
    .locals 1

    .line 35
    iget-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/c;->c:Lcom/netease/mpay/oversea/p;

    const/4 v0, 0x0

    invoke-interface {p1, v0, v0, v0}, Lcom/netease/mpay/oversea/p;->onSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    return-void
.end method

.method public a(Landroid/app/Activity;Z)V
    .locals 2

    .line 4
    new-instance p2, Lcom/vk/id/auth/VKIDAuthParams$Builder;

    invoke-direct {p2}, Lcom/vk/id/auth/VKIDAuthParams$Builder;-><init>()V

    .line 5
    invoke-virtual {p2}, Lcom/vk/id/auth/VKIDAuthParams$Builder;->build()Lcom/vk/id/auth/VKIDAuthParams;

    move-result-object p2

    .line 6
    new-instance v0, Lcom/netease/mpay/oversea/thirdapi/u$a;

    invoke-direct {v0, p0}, Lcom/netease/mpay/oversea/thirdapi/u$a;-><init>(Lcom/netease/mpay/oversea/thirdapi/u;)V

    .line 34
    iget-object v1, p0, Lcom/netease/mpay/oversea/thirdapi/u;->d:Lcom/vk/id/VKID;

    check-cast p1, Landroidx/lifecycle/LifecycleOwner;

    invoke-virtual {v1, p1, v0, p2}, Lcom/vk/id/VKID;->authorize(Landroidx/lifecycle/LifecycleOwner;Lcom/vk/id/VKID$AuthCallback;Lcom/vk/id/auth/VKIDAuthParams;)V

    return-void
.end method

.method public b(Landroid/app/Activity;)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/netease/mpay/oversea/h6;->m(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public g()Lcom/netease/mpay/oversea/g6;
    .locals 1

    .line 1
    sget-object v0, Lcom/netease/mpay/oversea/g6;->x:Lcom/netease/mpay/oversea/g6;

    return-object v0
.end method
