.class Lcom/netease/ntunisdk/zxing/notch/NotchImplAndroidP$AddStatusBarRunnable;
.super Ljava/lang/Object;
.source "NotchImplAndroidP.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/zxing/notch/NotchImplAndroidP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddStatusBarRunnable"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field final synthetic this$0:Lcom/netease/ntunisdk/zxing/notch/NotchImplAndroidP;

.field private window:Landroid/view/Window;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/zxing/notch/NotchImplAndroidP;Landroid/content/Context;Landroid/view/Window;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/netease/ntunisdk/zxing/notch/NotchImplAndroidP$AddStatusBarRunnable;->this$0:Lcom/netease/ntunisdk/zxing/notch/NotchImplAndroidP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    iput-object p2, p0, Lcom/netease/ntunisdk/zxing/notch/NotchImplAndroidP$AddStatusBarRunnable;->context:Landroid/content/Context;

    .line 185
    iput-object p3, p0, Lcom/netease/ntunisdk/zxing/notch/NotchImplAndroidP$AddStatusBarRunnable;->window:Landroid/view/Window;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 190
    iget-object v0, p0, Lcom/netease/ntunisdk/zxing/notch/NotchImplAndroidP$AddStatusBarRunnable;->this$0:Lcom/netease/ntunisdk/zxing/notch/NotchImplAndroidP;

    iget-object v1, p0, Lcom/netease/ntunisdk/zxing/notch/NotchImplAndroidP$AddStatusBarRunnable;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/netease/ntunisdk/zxing/notch/NotchImplAndroidP$AddStatusBarRunnable;->window:Landroid/view/Window;

    invoke-virtual {v0, v1, v2}, Lcom/netease/ntunisdk/zxing/notch/NotchImplAndroidP;->addStatusBarImpl(Landroid/content/Context;Landroid/view/Window;)V

    return-void
.end method
