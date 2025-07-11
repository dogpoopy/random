.class Lcom/netease/mpay/oversea/ui/o$i$m;
.super Ljava/lang/Object;
.source "LoginTemplate.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/ui/o$i;->b(Ljava/lang/String;Lcom/netease/mpay/oversea/e6;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/netease/mpay/oversea/e6;

.field final synthetic c:Lcom/netease/mpay/oversea/ui/o$i;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/ui/o$i;Ljava/lang/String;Lcom/netease/mpay/oversea/e6;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/o$i$m;->c:Lcom/netease/mpay/oversea/ui/o$i;

    iput-object p2, p0, Lcom/netease/mpay/oversea/ui/o$i$m;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/mpay/oversea/ui/o$i$m;->b:Lcom/netease/mpay/oversea/e6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/o$i$m;->c:Lcom/netease/mpay/oversea/ui/o$i;

    iget-object p2, p0, Lcom/netease/mpay/oversea/ui/o$i$m;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o$i$m;->b:Lcom/netease/mpay/oversea/e6;

    invoke-static {p1, p2, v0}, Lcom/netease/mpay/oversea/ui/o$i;->a(Lcom/netease/mpay/oversea/ui/o$i;Ljava/lang/String;Lcom/netease/mpay/oversea/e6;)V

    return-void
.end method
