.class Lcom/netease/ntunisdk/zxing/notch/NotchImplAndroidP$SetMarginRunnable;
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
    name = "SetMarginRunnable"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field final synthetic this$0:Lcom/netease/ntunisdk/zxing/notch/NotchImplAndroidP;

.field private views:[Lcom/netease/ntunisdk/zxing/notch/NotchDevice$NotchAffectView;

.field private window:Landroid/view/Window;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/zxing/notch/NotchImplAndroidP;Landroid/content/Context;Landroid/view/Window;[Lcom/netease/ntunisdk/zxing/notch/NotchDevice$NotchAffectView;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/netease/ntunisdk/zxing/notch/NotchImplAndroidP$SetMarginRunnable;->this$0:Lcom/netease/ntunisdk/zxing/notch/NotchImplAndroidP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    iput-object p2, p0, Lcom/netease/ntunisdk/zxing/notch/NotchImplAndroidP$SetMarginRunnable;->context:Landroid/content/Context;

    .line 202
    iput-object p3, p0, Lcom/netease/ntunisdk/zxing/notch/NotchImplAndroidP$SetMarginRunnable;->window:Landroid/view/Window;

    .line 203
    iput-object p4, p0, Lcom/netease/ntunisdk/zxing/notch/NotchImplAndroidP$SetMarginRunnable;->views:[Lcom/netease/ntunisdk/zxing/notch/NotchDevice$NotchAffectView;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 208
    iget-object v0, p0, Lcom/netease/ntunisdk/zxing/notch/NotchImplAndroidP$SetMarginRunnable;->this$0:Lcom/netease/ntunisdk/zxing/notch/NotchImplAndroidP;

    iget-object v1, p0, Lcom/netease/ntunisdk/zxing/notch/NotchImplAndroidP$SetMarginRunnable;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/netease/ntunisdk/zxing/notch/NotchImplAndroidP$SetMarginRunnable;->window:Landroid/view/Window;

    iget-object v3, p0, Lcom/netease/ntunisdk/zxing/notch/NotchImplAndroidP$SetMarginRunnable;->views:[Lcom/netease/ntunisdk/zxing/notch/NotchDevice$NotchAffectView;

    invoke-virtual {v0, v1, v2, v3}, Lcom/netease/ntunisdk/zxing/notch/NotchImplAndroidP;->justifyImpl(Landroid/content/Context;Landroid/view/Window;[Lcom/netease/ntunisdk/zxing/notch/NotchDevice$NotchAffectView;)V

    return-void
.end method
