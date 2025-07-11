.class final Lcom/netease/ntunisdk/base/function/k$3;
.super Ljava/lang/Object;
.source "OrderProtocol.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/base/function/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/ntunisdk/base/OrderInfo;

.field final synthetic b:Z


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/base/OrderInfo;Z)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/netease/ntunisdk/base/function/k$3;->a:Lcom/netease/ntunisdk/base/OrderInfo;

    iput-boolean p2, p0, Lcom/netease/ntunisdk/base/function/k$3;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 88
    iget-object p1, p0, Lcom/netease/ntunisdk/base/function/k$3;->a:Lcom/netease/ntunisdk/base/OrderInfo;

    iget-boolean p2, p0, Lcom/netease/ntunisdk/base/function/k$3;->b:Z

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/netease/ntunisdk/base/function/k;->a(Lcom/netease/ntunisdk/base/OrderInfo;ZZ)V

    return-void
.end method
