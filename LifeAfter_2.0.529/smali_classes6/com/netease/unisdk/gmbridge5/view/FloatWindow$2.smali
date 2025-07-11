.class Lcom/netease/unisdk/gmbridge5/view/FloatWindow$2;
.super Ljava/lang/Object;
.source "FloatWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/unisdk/gmbridge5/view/FloatWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final MOVEMENT_THRESHOLD_PX:I = 0xa


# instance fields
.field private initialTouchX:F

.field private initialTouchY:F

.field private initialX:I

.field private initialY:I

.field final synthetic this$0:Lcom/netease/unisdk/gmbridge5/view/FloatWindow;


# direct methods
.method constructor <init>(Lcom/netease/unisdk/gmbridge5/view/FloatWindow;)V
    .locals 0
    .param p1, "this$0"    # Lcom/netease/unisdk/gmbridge5/view/FloatWindow;

    .line 60
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge5/view/FloatWindow$2;->this$0:Lcom/netease/unisdk/gmbridge5/view/FloatWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 71
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    if-eq v0, v1, :cond_5

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 112
    const/4 v0, 0x0

    return v0

    .line 94
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v2, p0, Lcom/netease/unisdk/gmbridge5/view/FloatWindow$2;->initialTouchX:F

    sub-float/2addr v0, v2

    float-to-int v0, v0

    .line 95
    .local v0, "diffX":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget v3, p0, Lcom/netease/unisdk/gmbridge5/view/FloatWindow$2;->initialTouchY:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    .line 96
    .local v2, "diffY":I
    iget-object v3, p0, Lcom/netease/unisdk/gmbridge5/view/FloatWindow$2;->this$0:Lcom/netease/unisdk/gmbridge5/view/FloatWindow;

    invoke-static {v3}, Lcom/netease/unisdk/gmbridge5/view/FloatWindow;->access$600(Lcom/netease/unisdk/gmbridge5/view/FloatWindow;)I

    move-result v3

    const/16 v4, 0x53

    if-ne v3, v4, :cond_1

    .line 97
    iget-object v3, p0, Lcom/netease/unisdk/gmbridge5/view/FloatWindow$2;->this$0:Lcom/netease/unisdk/gmbridge5/view/FloatWindow;

    invoke-static {v3}, Lcom/netease/unisdk/gmbridge5/view/FloatWindow;->access$000(Lcom/netease/unisdk/gmbridge5/view/FloatWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v4, p0, Lcom/netease/unisdk/gmbridge5/view/FloatWindow$2;->initialX:I

    add-int/2addr v4, v0

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 98
    iget-object v3, p0, Lcom/netease/unisdk/gmbridge5/view/FloatWindow$2;->this$0:Lcom/netease/unisdk/gmbridge5/view/FloatWindow;

    invoke-static {v3}, Lcom/netease/unisdk/gmbridge5/view/FloatWindow;->access$000(Lcom/netease/unisdk/gmbridge5/view/FloatWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v4, p0, Lcom/netease/unisdk/gmbridge5/view/FloatWindow$2;->initialY:I

    sub-int/2addr v4, v2

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_0

    .line 99
    :cond_1
    iget-object v3, p0, Lcom/netease/unisdk/gmbridge5/view/FloatWindow$2;->this$0:Lcom/netease/unisdk/gmbridge5/view/FloatWindow;

    invoke-static {v3}, Lcom/netease/unisdk/gmbridge5/view/FloatWindow;->access$600(Lcom/netease/unisdk/gmbridge5/view/FloatWindow;)I

    move-result v3

    const/16 v4, 0x55

    if-ne v3, v4, :cond_2

    .line 100
    iget-object v3, p0, Lcom/netease/unisdk/gmbridge5/view/FloatWindow$2;->this$0:Lcom/netease/unisdk/gmbridge5/view/FloatWindow;

    invoke-static {v3}, Lcom/netease/unisdk/gmbridge5/view/FloatWindow;->access$000(Lcom/netease/unisdk/gmbridge5/view/FloatWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v4, p0, Lcom/netease/unisdk/gmbridge5/view/FloatWindow$2;->initialX:I

    sub-int/2addr v4, v0

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 101
    iget-object v3, p0, Lcom/netease/unisdk/gmbridge5/view/FloatWindow$2;->this$0:Lcom/netease/unisdk/gmbridge5/view/FloatWindow;

    invoke-static {v3}, Lcom/netease/unisdk/gmbridge5/view/FloatWindow;->access$000(Lcom/netease/unisdk/gmbridge5/view/FloatWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v4, p0, Lcom/netease/unisdk/gmbridge5/view/FloatWindow$2;->initialY:I

    sub-int/2addr v4, v2

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_0

    .line 102
    :cond_2
    iget-object v3, p0, Lcom/netease/unisdk/gmbridge5/view/FloatWindow$2;->this$0:Lcom/netease/unisdk/gmbridge5/view/FloatWindow;

    invoke-static {v3}, Lcom/netease/unisdk/gmbridge5/view/FloatWindow;->access$600(Lcom/netease/unisdk/gmbridge5/view/FloatWindow;)I

    move-result v3

    const/16 v4, 0x35

    if-ne v3, v4, :cond_3

    .line 103
    iget-object v3, p0, Lcom/netease/unisdk/gmbridge5/view/FloatWindow$2;->this$0:Lcom/netease/unisdk/gmbridge5/view/FloatWindow;

    invoke-static {v3}, Lcom/netease/unisdk/gmbridge5/view/FloatWindow;->access$000(Lcom/netease/unisdk/gmbridge5/view/FloatWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v4, p0, Lcom/netease/unisdk/gmbridge5/view/FloatWindow$2;->initialX:I

    sub-int/2addr v4, v0

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 104
    iget-object v3, p0, Lcom/netease/unisdk/gmbridge5/view/FloatWindow$2;->this$0:Lcom/netease/unisdk/gmbridge5/view/FloatWindow;

    invoke-static {v3}, Lcom/netease/unisdk/gmbridge5/view/FloatWindow;->access$000(Lcom/netease/unisdk/gmbridge5/view/FloatWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v4, p0, Lcom/netease/unisdk/gmbridge5/view/FloatWindow$2;->initialY:I

    add-int/2addr v4, v2

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_0

    .line 105
    :cond_3
    iget-object v3, p0, Lcom/netease/unisdk/gmbridge5/view/FloatWindow$2;->this$0:Lcom/netease/unisdk/gmbridge5/view/FloatWindow;

    invoke-static {v3}, Lcom/netease/unisdk/gmbridge5/view/FloatWindow;->access$600(Lcom/netease/unisdk/gmbridge5/view/FloatWindow;)I

    move-result v3

    const/16 v4, 0x33

    if-ne v3, v4, :cond_4

    .line 106
    iget-object v3, p0, Lcom/netease/unisdk/gmbridge5/view/FloatWindow$2;->this$0:Lcom/netease/unisdk/gmbridge5/view/FloatWindow;

    invoke-static {v3}, Lcom/netease/unisdk/gmbridge5/view/FloatWindow;->access$000(Lcom/netease/unisdk/gmbridge5/view/FloatWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v4, p0, Lcom/netease/unisdk/gmbridge5/view/FloatWindow$2;->initialX:I

    add-int/2addr v4, v0

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 107
    iget-object v3, p0, Lcom/netease/unisdk/gmbridge5/view/FloatWindow$2;->this$0:Lcom/netease/unisdk/gmbridge5/view/FloatWindow;

    invoke-static {v3}, Lcom/netease/unisdk/gmbridge5/view/FloatWindow;->access$000(Lcom/netease/unisdk/gmbridge5/view/FloatWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v4, p0, Lcom/netease/unisdk/gmbridge5/view/FloatWindow$2;->initialY:I

    add-int/2addr v4, v2

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 109
    :cond_4
    :goto_0
    iget-object v3, p0, Lcom/netease/unisdk/gmbridge5/view/FloatWindow$2;->this$0:Lcom/netease/unisdk/gmbridge5/view/FloatWindow;

    invoke-static {v3}, Lcom/netease/unisdk/gmbridge5/view/FloatWindow;->access$800(Lcom/netease/unisdk/gmbridge5/view/FloatWindow;)Landroid/view/WindowManager;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/unisdk/gmbridge5/view/FloatWindow$2;->this$0:Lcom/netease/unisdk/gmbridge5/view/FloatWindow;

    invoke-static {v4}, Lcom/netease/unisdk/gmbridge5/view/FloatWindow;->access$700(Lcom/netease/unisdk/gmbridge5/view/FloatWindow;)Landroid/widget/LinearLayout;

    move-result-object v4

    iget-object v5, p0, Lcom/netease/unisdk/gmbridge5/view/FloatWindow$2;->this$0:Lcom/netease/unisdk/gmbridge5/view/FloatWindow;

    invoke-static {v5}, Lcom/netease/unisdk/gmbridge5/view/FloatWindow;->access$000(Lcom/netease/unisdk/gmbridge5/view/FloatWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    return v1

    .line 80
    .end local v0    # "diffX":I
    .end local v2    # "diffY":I
    :cond_5
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/view/FloatWindow$2;->this$0:Lcom/netease/unisdk/gmbridge5/view/FloatWindow;

    invoke-static {v0}, Lcom/netease/unisdk/gmbridge5/view/FloatWindow;->access$200(Lcom/netease/unisdk/gmbridge5/view/FloatWindow;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v2, p0, Lcom/netease/unisdk/gmbridge5/view/FloatWindow$2;->this$0:Lcom/netease/unisdk/gmbridge5/view/FloatWindow;

    invoke-static {v2}, Lcom/netease/unisdk/gmbridge5/view/FloatWindow;->access$300(Lcom/netease/unisdk/gmbridge5/view/FloatWindow;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 82
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v2, p0, Lcom/netease/unisdk/gmbridge5/view/FloatWindow$2;->initialTouchX:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v2, 0x41200000    # 10.0f

    cmpg-float v0, v0, v2

    if-ltz v0, :cond_6

    .line 83
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v3, p0, Lcom/netease/unisdk/gmbridge5/view/FloatWindow$2;->initialTouchY:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_7

    .line 84
    :cond_6
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/view/FloatWindow$2;->this$0:Lcom/netease/unisdk/gmbridge5/view/FloatWindow;

    invoke-static {v0}, Lcom/netease/unisdk/gmbridge5/view/FloatWindow;->access$400(Lcom/netease/unisdk/gmbridge5/view/FloatWindow;)V

    .line 87
    :cond_7
    :try_start_0
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/view/FloatWindow$2;->this$0:Lcom/netease/unisdk/gmbridge5/view/FloatWindow;

    invoke-static {v0}, Lcom/netease/unisdk/gmbridge5/view/FloatWindow;->access$200(Lcom/netease/unisdk/gmbridge5/view/FloatWindow;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v2, p0, Lcom/netease/unisdk/gmbridge5/view/FloatWindow$2;->this$0:Lcom/netease/unisdk/gmbridge5/view/FloatWindow;

    invoke-static {v2}, Lcom/netease/unisdk/gmbridge5/view/FloatWindow;->access$500(Lcom/netease/unisdk/gmbridge5/view/FloatWindow;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->removeCallbacks(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    goto :goto_1

    .line 88
    :catch_0
    move-exception v0

    .line 91
    :goto_1
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/view/FloatWindow$2;->this$0:Lcom/netease/unisdk/gmbridge5/view/FloatWindow;

    invoke-static {v0}, Lcom/netease/unisdk/gmbridge5/view/FloatWindow;->access$200(Lcom/netease/unisdk/gmbridge5/view/FloatWindow;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v2, p0, Lcom/netease/unisdk/gmbridge5/view/FloatWindow$2;->this$0:Lcom/netease/unisdk/gmbridge5/view/FloatWindow;

    invoke-static {v2}, Lcom/netease/unisdk/gmbridge5/view/FloatWindow;->access$500(Lcom/netease/unisdk/gmbridge5/view/FloatWindow;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v3, 0xbb8

    invoke-virtual {v0, v2, v3, v4}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 92
    return v1

    .line 73
    :cond_8
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/view/FloatWindow$2;->this$0:Lcom/netease/unisdk/gmbridge5/view/FloatWindow;

    invoke-static {v0}, Lcom/netease/unisdk/gmbridge5/view/FloatWindow;->access$000(Lcom/netease/unisdk/gmbridge5/view/FloatWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v0, p0, Lcom/netease/unisdk/gmbridge5/view/FloatWindow$2;->initialX:I

    .line 74
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/view/FloatWindow$2;->this$0:Lcom/netease/unisdk/gmbridge5/view/FloatWindow;

    invoke-static {v0}, Lcom/netease/unisdk/gmbridge5/view/FloatWindow;->access$000(Lcom/netease/unisdk/gmbridge5/view/FloatWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v0, p0, Lcom/netease/unisdk/gmbridge5/view/FloatWindow$2;->initialY:I

    .line 75
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/netease/unisdk/gmbridge5/view/FloatWindow$2;->initialTouchX:F

    .line 76
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/netease/unisdk/gmbridge5/view/FloatWindow$2;->initialTouchY:F

    .line 77
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/view/FloatWindow$2;->this$0:Lcom/netease/unisdk/gmbridge5/view/FloatWindow;

    invoke-static {v0}, Lcom/netease/unisdk/gmbridge5/view/FloatWindow;->access$200(Lcom/netease/unisdk/gmbridge5/view/FloatWindow;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v2, p0, Lcom/netease/unisdk/gmbridge5/view/FloatWindow$2;->this$0:Lcom/netease/unisdk/gmbridge5/view/FloatWindow;

    invoke-static {v2}, Lcom/netease/unisdk/gmbridge5/view/FloatWindow;->access$100(Lcom/netease/unisdk/gmbridge5/view/FloatWindow;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 78
    return v1
.end method
