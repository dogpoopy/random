.class Lcom/netease/mpay/oversea/ui/z$a;
.super Ljava/lang/Object;
.source "WebViewInputPlugin.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/ui/z;-><init>(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/z$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/ui/z;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/ui/z;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/z$a;->a:Lcom/netease/mpay/oversea/ui/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z$a;->a:Lcom/netease/mpay/oversea/ui/z;

    invoke-static {v0}, Lcom/netease/mpay/oversea/ui/z;->a(Lcom/netease/mpay/oversea/ui/z;)V

    return-void
.end method
