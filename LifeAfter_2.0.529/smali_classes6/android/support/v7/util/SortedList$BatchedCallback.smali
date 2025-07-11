.class public Landroid/support/v7/util/SortedList$BatchedCallback;
.super Landroid/support/v7/util/SortedList$Callback;
.source "SortedList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/util/SortedList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BatchedCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T2:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v7/util/SortedList$Callback<",
        "TT2;>;"
    }
.end annotation


# static fields
.field static final TYPE_ADD:I = 0x1

.field static final TYPE_CHANGE:I = 0x3

.field static final TYPE_MOVE:I = 0x4

.field static final TYPE_NONE:I = 0x0

.field static final TYPE_REMOVE:I = 0x2


# instance fields
.field mLastEventCount:I

.field mLastEventPosition:I

.field mLastEventType:I

.field private final mWrappedCallback:Landroid/support/v7/util/SortedList$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v7/util/SortedList$Callback<",
            "TT2;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v7/util/SortedList$Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/util/SortedList$Callback<",
            "TT2;>;)V"
        }
    .end annotation

    .line 800
    invoke-direct {p0}, Landroid/support/v7/util/SortedList$Callback;-><init>()V

    const/4 v0, 0x0

    .line 789
    iput v0, p0, Landroid/support/v7/util/SortedList$BatchedCallback;->mLastEventType:I

    const/4 v0, -0x1

    .line 790
    iput v0, p0, Landroid/support/v7/util/SortedList$BatchedCallback;->mLastEventPosition:I

    .line 791
    iput v0, p0, Landroid/support/v7/util/SortedList$BatchedCallback;->mLastEventCount:I

    .line 801
    iput-object p1, p0, Landroid/support/v7/util/SortedList$BatchedCallback;->mWrappedCallback:Landroid/support/v7/util/SortedList$Callback;

    return-void
.end method

.method static synthetic access$000(Landroid/support/v7/util/SortedList$BatchedCallback;)Landroid/support/v7/util/SortedList$Callback;
    .locals 0

    .line 780
    iget-object p0, p0, Landroid/support/v7/util/SortedList$BatchedCallback;->mWrappedCallback:Landroid/support/v7/util/SortedList$Callback;

    return-object p0
.end method


# virtual methods
.method public areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT2;TT2;)Z"
        }
    .end annotation

    .line 860
    iget-object v0, p0, Landroid/support/v7/util/SortedList$BatchedCallback;->mWrappedCallback:Landroid/support/v7/util/SortedList$Callback;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/util/SortedList$Callback;->areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT2;TT2;)Z"
        }
    .end annotation

    .line 865
    iget-object v0, p0, Landroid/support/v7/util/SortedList$BatchedCallback;->mWrappedCallback:Landroid/support/v7/util/SortedList$Callback;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/util/SortedList$Callback;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT2;TT2;)I"
        }
    .end annotation

    .line 806
    iget-object v0, p0, Landroid/support/v7/util/SortedList$BatchedCallback;->mWrappedCallback:Landroid/support/v7/util/SortedList$Callback;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/util/SortedList$Callback;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public dispatchLastEvent()V
    .locals 3

    .line 874
    iget v0, p0, Landroid/support/v7/util/SortedList$BatchedCallback;->mLastEventType:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 885
    :cond_1
    iget-object v0, p0, Landroid/support/v7/util/SortedList$BatchedCallback;->mWrappedCallback:Landroid/support/v7/util/SortedList$Callback;

    iget v1, p0, Landroid/support/v7/util/SortedList$BatchedCallback;->mLastEventPosition:I

    iget v2, p0, Landroid/support/v7/util/SortedList$BatchedCallback;->mLastEventCount:I

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/util/SortedList$Callback;->onChanged(II)V

    goto :goto_0

    .line 882
    :cond_2
    iget-object v0, p0, Landroid/support/v7/util/SortedList$BatchedCallback;->mWrappedCallback:Landroid/support/v7/util/SortedList$Callback;

    iget v1, p0, Landroid/support/v7/util/SortedList$BatchedCallback;->mLastEventPosition:I

    iget v2, p0, Landroid/support/v7/util/SortedList$BatchedCallback;->mLastEventCount:I

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/util/SortedList$Callback;->onRemoved(II)V

    goto :goto_0

    .line 879
    :cond_3
    iget-object v0, p0, Landroid/support/v7/util/SortedList$BatchedCallback;->mWrappedCallback:Landroid/support/v7/util/SortedList$Callback;

    iget v1, p0, Landroid/support/v7/util/SortedList$BatchedCallback;->mLastEventPosition:I

    iget v2, p0, Landroid/support/v7/util/SortedList$BatchedCallback;->mLastEventCount:I

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/util/SortedList$Callback;->onInserted(II)V

    :goto_0
    const/4 v0, 0x0

    .line 888
    iput v0, p0, Landroid/support/v7/util/SortedList$BatchedCallback;->mLastEventType:I

    return-void
.end method

.method public onChanged(II)V
    .locals 4

    .line 843
    iget v0, p0, Landroid/support/v7/util/SortedList$BatchedCallback;->mLastEventType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/support/v7/util/SortedList$BatchedCallback;->mLastEventPosition:I

    iget v2, p0, Landroid/support/v7/util/SortedList$BatchedCallback;->mLastEventCount:I

    add-int v3, v0, v2

    if-gt p1, v3, :cond_0

    add-int v3, p1, p2

    if-lt v3, v0, :cond_0

    add-int/2addr v2, v0

    .line 848
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Landroid/support/v7/util/SortedList$BatchedCallback;->mLastEventPosition:I

    .line 849
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget p2, p0, Landroid/support/v7/util/SortedList$BatchedCallback;->mLastEventPosition:I

    sub-int/2addr p1, p2

    iput p1, p0, Landroid/support/v7/util/SortedList$BatchedCallback;->mLastEventCount:I

    return-void

    .line 852
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/util/SortedList$BatchedCallback;->dispatchLastEvent()V

    .line 853
    iput p1, p0, Landroid/support/v7/util/SortedList$BatchedCallback;->mLastEventPosition:I

    .line 854
    iput p2, p0, Landroid/support/v7/util/SortedList$BatchedCallback;->mLastEventCount:I

    .line 855
    iput v1, p0, Landroid/support/v7/util/SortedList$BatchedCallback;->mLastEventType:I

    return-void
.end method

.method public onInserted(II)V
    .locals 4

    .line 811
    iget v0, p0, Landroid/support/v7/util/SortedList$BatchedCallback;->mLastEventType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/support/v7/util/SortedList$BatchedCallback;->mLastEventPosition:I

    if-lt p1, v0, :cond_0

    iget v2, p0, Landroid/support/v7/util/SortedList$BatchedCallback;->mLastEventCount:I

    add-int v3, v0, v2

    if-gt p1, v3, :cond_0

    add-int/2addr v2, p2

    .line 813
    iput v2, p0, Landroid/support/v7/util/SortedList$BatchedCallback;->mLastEventCount:I

    .line 814
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Landroid/support/v7/util/SortedList$BatchedCallback;->mLastEventPosition:I

    return-void

    .line 817
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/util/SortedList$BatchedCallback;->dispatchLastEvent()V

    .line 818
    iput p1, p0, Landroid/support/v7/util/SortedList$BatchedCallback;->mLastEventPosition:I

    .line 819
    iput p2, p0, Landroid/support/v7/util/SortedList$BatchedCallback;->mLastEventCount:I

    .line 820
    iput v1, p0, Landroid/support/v7/util/SortedList$BatchedCallback;->mLastEventType:I

    return-void
.end method

.method public onMoved(II)V
    .locals 1

    .line 837
    invoke-virtual {p0}, Landroid/support/v7/util/SortedList$BatchedCallback;->dispatchLastEvent()V

    .line 838
    iget-object v0, p0, Landroid/support/v7/util/SortedList$BatchedCallback;->mWrappedCallback:Landroid/support/v7/util/SortedList$Callback;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/util/SortedList$Callback;->onMoved(II)V

    return-void
.end method

.method public onRemoved(II)V
    .locals 2

    .line 825
    iget v0, p0, Landroid/support/v7/util/SortedList$BatchedCallback;->mLastEventType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/support/v7/util/SortedList$BatchedCallback;->mLastEventPosition:I

    if-ne v0, p1, :cond_0

    .line 826
    iget p1, p0, Landroid/support/v7/util/SortedList$BatchedCallback;->mLastEventCount:I

    add-int/2addr p1, p2

    iput p1, p0, Landroid/support/v7/util/SortedList$BatchedCallback;->mLastEventCount:I

    return-void

    .line 829
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/util/SortedList$BatchedCallback;->dispatchLastEvent()V

    .line 830
    iput p1, p0, Landroid/support/v7/util/SortedList$BatchedCallback;->mLastEventPosition:I

    .line 831
    iput p2, p0, Landroid/support/v7/util/SortedList$BatchedCallback;->mLastEventCount:I

    .line 832
    iput v1, p0, Landroid/support/v7/util/SortedList$BatchedCallback;->mLastEventType:I

    return-void
.end method
