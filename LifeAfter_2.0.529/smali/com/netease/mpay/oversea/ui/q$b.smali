.class Lcom/netease/mpay/oversea/ui/q$b;
.super Ljava/lang/Object;
.source "PermissionHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/ui/q;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/ui/q;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/ui/q;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/q$b;->a:Lcom/netease/mpay/oversea/ui/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/q$b;->a:Lcom/netease/mpay/oversea/ui/q;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    const/16 p2, 0x66

    invoke-static {p1, p2}, Lcom/netease/mpay/oversea/ec;->a(Landroid/app/Activity;I)V

    return-void
.end method
