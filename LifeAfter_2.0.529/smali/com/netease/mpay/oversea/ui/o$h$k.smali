.class Lcom/netease/mpay/oversea/ui/o$h$k;
.super Ljava/lang/Object;
.source "LoginTemplate.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/ui/o$h;->c(Lcom/netease/mpay/oversea/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/ui/o$h;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/ui/o$h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/o$h$k;->a:Lcom/netease/mpay/oversea/ui/o$h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/o$h$k;->a:Lcom/netease/mpay/oversea/ui/o$h;

    sget-object p2, Lcom/netease/mpay/oversea/s9;->g:Lcom/netease/mpay/oversea/s9;

    iput-object p2, p1, Lcom/netease/mpay/oversea/ui/o$h;->a:Lcom/netease/mpay/oversea/s9;

    .line 2
    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/o$h;->b:Lcom/netease/mpay/oversea/ui/o;

    invoke-static {p1}, Lcom/netease/mpay/oversea/ui/o;->a(Lcom/netease/mpay/oversea/ui/o;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o$h$k;->a:Lcom/netease/mpay/oversea/ui/o$h;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/o$h;->b:Lcom/netease/mpay/oversea/ui/o;

    invoke-static {v0}, Lcom/netease/mpay/oversea/ui/o;->b(Lcom/netease/mpay/oversea/ui/o;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/netease/mpay/oversea/ui/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
