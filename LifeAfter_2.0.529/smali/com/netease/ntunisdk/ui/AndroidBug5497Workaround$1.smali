.class Lcom/netease/ntunisdk/ui/AndroidBug5497Workaround$1;
.super Ljava/lang/Object;
.source "AndroidBug5497Workaround.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/ui/AndroidBug5497Workaround;-><init>(Landroid/app/Activity;Lcom/netease/ntunisdk/ui/NgWebviewActivity$KeyboardListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/ui/AndroidBug5497Workaround;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/ui/AndroidBug5497Workaround;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/netease/ntunisdk/ui/AndroidBug5497Workaround$1;->this$0:Lcom/netease/ntunisdk/ui/AndroidBug5497Workaround;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/netease/ntunisdk/ui/AndroidBug5497Workaround$1;->this$0:Lcom/netease/ntunisdk/ui/AndroidBug5497Workaround;

    invoke-static {v0}, Lcom/netease/ntunisdk/ui/AndroidBug5497Workaround;->access$000(Lcom/netease/ntunisdk/ui/AndroidBug5497Workaround;)V

    return-void
.end method
