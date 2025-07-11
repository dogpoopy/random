.class Lcom/netease/mpay/oversea/ui/o$i$j;
.super Ljava/lang/Object;
.source "LoginTemplate.java"

# interfaces
.implements Lcom/netease/mpay/oversea/ui/q$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/ui/o$i;->a(Ljava/lang/String;Lcom/netease/mpay/oversea/e6;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/y5;

.field final synthetic b:Lcom/netease/mpay/oversea/e6;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/netease/mpay/oversea/ui/o$i;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/ui/o$i;Lcom/netease/mpay/oversea/y5;Lcom/netease/mpay/oversea/e6;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/o$i$j;->d:Lcom/netease/mpay/oversea/ui/o$i;

    iput-object p2, p0, Lcom/netease/mpay/oversea/ui/o$i$j;->a:Lcom/netease/mpay/oversea/y5;

    iput-object p3, p0, Lcom/netease/mpay/oversea/ui/o$i$j;->b:Lcom/netease/mpay/oversea/e6;

    iput-object p4, p0, Lcom/netease/mpay/oversea/ui/o$i$j;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 4

    .line 1
    new-instance p1, Lcom/netease/mpay/oversea/pa;

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o$i$j;->d:Lcom/netease/mpay/oversea/ui/o$i;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/o$i;->a:Lcom/netease/mpay/oversea/ui/o;

    iget-object v1, v0, Lcom/netease/mpay/oversea/ui/o;->j:Landroid/app/Activity;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/o;->o:Ljava/lang/String;

    invoke-direct {p1, v1, v0}, Lcom/netease/mpay/oversea/pa;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/pa;->c()Lcom/netease/mpay/oversea/n5;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o$i$j;->a:Lcom/netease/mpay/oversea/y5;

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/n5;->b(Lcom/netease/mpay/oversea/y5;)V

    .line 2
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/o$i$j;->b:Lcom/netease/mpay/oversea/e6;

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o$i$j;->a:Lcom/netease/mpay/oversea/y5;

    iget-object v0, v0, Lcom/netease/mpay/oversea/y5;->f:Lcom/netease/mpay/oversea/g6;

    iput-object v0, p1, Lcom/netease/mpay/oversea/e6;->h:Lcom/netease/mpay/oversea/g6;

    .line 3
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o$i$j;->d:Lcom/netease/mpay/oversea/ui/o$i;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/o$i;->a:Lcom/netease/mpay/oversea/ui/o;

    iget-object v1, v0, Lcom/netease/mpay/oversea/ui/o;->k:Lcom/netease/mpay/oversea/ui/i;

    new-instance v2, Lcom/netease/mpay/oversea/ui/i$l;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/o;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    iget-object v3, p0, Lcom/netease/mpay/oversea/ui/o$i$j;->c:Ljava/lang/String;

    invoke-direct {v2, v0, v3, p1}, Lcom/netease/mpay/oversea/ui/i$l;-><init>(Lcom/netease/mpay/oversea/s9;Ljava/lang/String;Lcom/netease/mpay/oversea/e6;)V

    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/o$i$j;->d:Lcom/netease/mpay/oversea/ui/o$i;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/o$i;->a:Lcom/netease/mpay/oversea/ui/o;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/o;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 5
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object p1

    .line 6
    invoke-virtual {v1, v2, p1}, Lcom/netease/mpay/oversea/ui/i;->a(Lcom/netease/mpay/oversea/ui/i$g;Lcom/netease/mpay/oversea/r4;)V

    return-void
.end method
