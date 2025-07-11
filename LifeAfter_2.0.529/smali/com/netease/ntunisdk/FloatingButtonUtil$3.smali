.class final Lcom/netease/ntunisdk/FloatingButtonUtil$3;
.super Ljava/lang/Object;
.source "FloatingButtonUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/FloatingButtonUtil;->reqPermission(Landroid/app/Activity;Lcom/netease/ntunisdk/FloatingButtonUtil$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 103
    invoke-static {}, Lcom/netease/ntunisdk/FloatingButtonUtil;->access$100()Lcom/netease/ntunisdk/FloatingButtonUtil$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 104
    invoke-static {}, Lcom/netease/ntunisdk/FloatingButtonUtil;->access$100()Lcom/netease/ntunisdk/FloatingButtonUtil$Callback;

    move-result-object p1

    invoke-interface {p1}, Lcom/netease/ntunisdk/FloatingButtonUtil$Callback;->done()V

    :cond_0
    return-void
.end method
