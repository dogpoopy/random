.class public Lcom/netease/mpay/oversea/p0$b;
.super Ljava/lang/Object;
.source "BrowserActivityProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/oversea/p0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/g6;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "game_id"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "type"

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4
    invoke-virtual {p2}, Lcom/netease/mpay/oversea/g6;->k()I

    move-result p1

    const-string p2, "login_type"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5
    const-class p1, Lcom/netease/mpay/oversea/p0;

    const/16 p2, 0x65

    invoke-static {p0, p1, v0, p2}, Lcom/netease/mpay/oversea/p0;->a(Landroid/app/Activity;Ljava/lang/Class;Landroid/content/Intent;I)V

    return-void
.end method

.method private static a(Lcom/netease/mpay/oversea/s0;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 6
    :cond_0
    sget-object v0, Lcom/netease/mpay/oversea/p0;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/g6;Lcom/netease/mpay/oversea/s0;)V
    .locals 0

    .line 7
    invoke-static {p4}, Lcom/netease/mpay/oversea/p0$b;->a(Lcom/netease/mpay/oversea/s0;)V

    .line 8
    invoke-static {p1, p2, p3}, Lcom/netease/mpay/oversea/p0$b;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/g6;)V

    return-void
.end method
