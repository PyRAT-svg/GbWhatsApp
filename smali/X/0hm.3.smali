.class public final synthetic LX/0hm;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private final synthetic A00:Lcom/gbwhatsapq/QuickContactActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gbwhatsapq/QuickContactActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LX/0hm;->A00:Lcom/gbwhatsapq/QuickContactActivity;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, LX/0hm;->A00:Lcom/gbwhatsapq/QuickContactActivity;

    invoke-virtual {v0, p1, p2}, Lcom/gbwhatsapq/QuickContactActivity;->A0l(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
