.class Lcom/netease/mpay/oversea/ui/o$h$c;
.super Ljava/lang/Object;
.source "LoginTemplate.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/ui/o$h;->a(Ljava/lang/String;Lcom/netease/mpay/oversea/e6;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/netease/mpay/oversea/e6;

.field final synthetic c:Z

.field final synthetic d:Lcom/netease/mpay/oversea/ui/o$h;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/ui/o$h;Ljava/lang/String;Lcom/netease/mpay/oversea/e6;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/o$h$c;->d:Lcom/netease/mpay/oversea/ui/o$h;

    iput-object p2, p0, Lcom/netease/mpay/oversea/ui/o$h$c;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/mpay/oversea/ui/o$h$c;->b:Lcom/netease/mpay/oversea/e6;

    iput-boolean p4, p0, Lcom/netease/mpay/oversea/ui/o$h$c;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/o$h$c;->d:Lcom/netease/mpay/oversea/ui/o$h;

    iget-object p2, p0, Lcom/netease/mpay/oversea/ui/o$h$c;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o$h$c;->b:Lcom/netease/mpay/oversea/e6;

    iget-boolean v1, p0, Lcom/netease/mpay/oversea/ui/o$h$c;->c:Z

    invoke-static {p1, p2, v0, v1}, Lcom/netease/mpay/oversea/ui/o$h;->a(Lcom/netease/mpay/oversea/ui/o$h;Ljava/lang/String;Lcom/netease/mpay/oversea/e6;Z)V

    return-void
.end method
