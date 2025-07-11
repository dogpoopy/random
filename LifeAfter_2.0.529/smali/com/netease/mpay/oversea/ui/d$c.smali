.class Lcom/netease/mpay/oversea/ui/d$c;
.super Ljava/lang/Object;
.source "ChannelLoginApi.java"

# interfaces
.implements Lcom/netease/mpay/oversea/d7;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/ui/d;->a(Landroid/app/Activity;Ljava/lang/String;ILcom/netease/mpay/oversea/UnBindCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/netease/mpay/oversea/d7<",
        "Lcom/netease/mpay/oversea/User;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I

.field final synthetic d:Lcom/netease/mpay/oversea/y5;

.field final synthetic e:Lcom/netease/mpay/oversea/UnBindCallback;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;ILcom/netease/mpay/oversea/y5;Lcom/netease/mpay/oversea/UnBindCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/d$c;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/netease/mpay/oversea/ui/d$c;->b:Ljava/lang/String;

    iput p3, p0, Lcom/netease/mpay/oversea/ui/d$c;->c:I

    iput-object p4, p0, Lcom/netease/mpay/oversea/ui/d$c;->d:Lcom/netease/mpay/oversea/y5;

    iput-object p5, p0, Lcom/netease/mpay/oversea/ui/d$c;->e:Lcom/netease/mpay/oversea/UnBindCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/netease/mpay/oversea/c9;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/mpay/oversea/c9<",
            "Lcom/netease/mpay/oversea/User;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/c9;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/d$c;->a:Landroid/app/Activity;

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/d$c;->b:Ljava/lang/String;

    iget v1, p0, Lcom/netease/mpay/oversea/ui/d$c;->c:I

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/d$c;->d:Lcom/netease/mpay/oversea/y5;

    iget-object v3, p0, Lcom/netease/mpay/oversea/ui/d$c;->e:Lcom/netease/mpay/oversea/UnBindCallback;

    invoke-static {p1, v0, v1, v2, v3}, Lcom/netease/mpay/oversea/ui/d;->a(Landroid/app/Activity;Ljava/lang/String;ILcom/netease/mpay/oversea/y5;Lcom/netease/mpay/oversea/UnBindCallback;)V

    :cond_0
    return-void
.end method
